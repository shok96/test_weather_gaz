import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../animations/widgets/animated_size.dart';
import '../configs/animation_config.dart';

class CollapsibleChild extends HookWidget {
  const CollapsibleChild({
    Key? key,
    this.child,
    this.animationConfig = const AnimationNormalConfig(),
    this.cornerRadius = 0.0,
    this.withOffset = true,
    this.onCollapse,
    this.axis = Axis.vertical,
    this.axisAlignment,
    this.isCollapseTransitionReversed = true,
  }) : super(key: key);

  final Widget? child;
  final AnimationConfigData animationConfig;
  final double cornerRadius;
  final bool withOffset;
  final VoidCallback? onCollapse;
  final Axis axis;
  final double? axisAlignment;
  final bool isCollapseTransitionReversed;

  @override
  Widget build(BuildContext context) {
    final initialAnimationValue = child == null ? 0.0 : 1.0;

    final isCollapsed = child == null;

    final sizeAnimation = useAnimationController(
      initialValue: initialAnimationValue,
      duration: animationConfig.duration,
      lowerBound: 0.0,
      upperBound: 1.0,
    );

    final sizeFactorValue = useAnimation(sizeAnimation);
    final shouldShowChild = sizeFactorValue > 0.0;
    final childState = useState(child);
    final isAnimating = useState(sizeAnimation.isAnimating);

    Curve reversebleCurve() {
      return isCollapsed
          ? animationConfig.curve.flipped
          : animationConfig.curve;
    }

    Curve curve() {
      return isCollapseTransitionReversed
          ? reversebleCurve()
          : animationConfig.curve;
    }

    final tween = CurveTween(curve: curve());

    VoidCallback? onWidgetChange() {
      if (child == null && childState.value != null) {
        final tickerFuture = sizeAnimation.reverse();
        tickerFuture.whenComplete(() => onCollapse?.call());
        return null;
      }
      if (child != null) {
        childState.value = child;
        sizeAnimation.forward();
        return null;
      }
      return null;
    }

    useEffect(onWidgetChange, [child]);

    void animationStateListener() {
      isAnimating.value = sizeAnimation.isAnimating;
    }

    VoidCallback? effect() {
      sizeAnimation.addListener(animationStateListener);
      return () => sizeAnimation.removeListener(animationStateListener);
    }

    useEffect(effect, []);

    final childToShow =
        (shouldShowChild ? childState.value : const SizedBox()) ??
            const SizedBox();

    return isAnimating.value
        ? RiderAnimatedSize(
            child: AnimatedOpacity(
              duration: animationConfig.duration,
              curve: reversebleCurve(),
              opacity: isCollapsed ? 0.0 : 1.0,
              child: SizeTransition(
                axis: axis,
                axisAlignment: withOffset ? axisAlignment ?? -0.8 : 0.0,
                sizeFactor: sizeAnimation.drive(tween),
                child: childToShow,
              ),
            ),
          )
        : childToShow;
  }
}
