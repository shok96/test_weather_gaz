import 'package:animations/animations.dart';
import 'package:flutter/material.dart';

import '../configs/animation_config.dart';

enum TransitionAxis {
  x,
  y,
  z,
}

class FadeTroughWithOffsetTransition extends StatelessWidget {
  const FadeTroughWithOffsetTransition({
    Key? key,
    this.axis = TransitionAxis.x,
    this.reversed = false,
    required this.child,
    this.alignment = Alignment.center,
    this.config = const AnimationNormalConfig(),
    this.canvasColor = Colors.transparent,
    this.transitionLayersCountLimit = 4,
  }) : super(key: key);

  final TransitionAxis axis;
  final bool reversed;
  final Widget child;
  final Alignment alignment;
  final AnimationConfigData config;
  final Color canvasColor;
  final int transitionLayersCountLimit;

  @override
  Widget build(BuildContext context) {
    final type = <TransitionAxis, SharedAxisTransitionType>{
      TransitionAxis.x: SharedAxisTransitionType.horizontal,
      TransitionAxis.y: SharedAxisTransitionType.vertical,
      TransitionAxis.z: SharedAxisTransitionType.scaled,
    };
    return PageTransitionSwitcher(
      reverse: reversed,
      duration: config.duration,
      layoutBuilder: (children) => Stack(
        clipBehavior: Clip.none,
        fit: StackFit.passthrough,
        alignment: alignment,
        children: children.take(transitionLayersCountLimit).toList(),
      ),
      transitionBuilder: (child, primaryAnimation, secondaryAnimation) {
        return Theme(
          data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
          child: ColoredBox(
            color: canvasColor,
            child: SharedAxisTransition(
              animation: primaryAnimation,
              secondaryAnimation: secondaryAnimation,
              transitionType: type[axis]!,
              child: child,
            ),
          ),
        );
      },
      child: child,
    );
  }
}
