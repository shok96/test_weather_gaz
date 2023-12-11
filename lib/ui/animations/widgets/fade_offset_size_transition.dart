import 'package:flutter/material.dart';

import '../configs/animation_config.dart';
import 'animated_size.dart';
import 'fade_with_offset_transition.dart';

class FadeWithOffsetAndSizeTransition extends StatelessWidget {
  const FadeWithOffsetAndSizeTransition({
    Key? key,
    required this.child,
    this.alignment,
    this.config,
    this.axis = TransitionAxis.x,
    this.reversed = false,
    this.onSizeChanged,
  }) : super(key: key);

  final Widget child;
  final Alignment? alignment;
  final AnimationConfigData? config;
  final TransitionAxis axis;
  final bool reversed;
  final VoidCallback? onSizeChanged;

  @override
  Widget build(BuildContext context) {
    return RiderAnimatedSize(
      alignment: alignment,
      config: config,
      onSizeChanged: onSizeChanged,
      child: FadeTroughWithOffsetTransition(
        alignment: alignment ?? Alignment.topCenter,
        axis: axis,
        reversed: reversed,
        config: config ?? const AnimationNormalConfig(),
        child: child,
      ),
    );
  }
}
