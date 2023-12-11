import 'package:flutter/material.dart';

import '../configs/animation_config.dart';

class RiderFadeTransition extends StatelessWidget {
  const RiderFadeTransition({
    Key? key,
    this.alignment,
    required this.child,
    this.config,
    this.alwaysOpaque = false,
    this.fit = StackFit.loose,
  }) : super(key: key);

  final AnimationConfigData? config;
  final AlignmentGeometry? alignment;
  final Widget child;
  final bool alwaysOpaque;
  final StackFit fit;

  @override
  Widget build(BuildContext context) {
    const defaultConfig = AnimationNormalConfig();
    return AnimatedSwitcher(
      duration: config?.duration ?? defaultConfig.duration,
      switchInCurve: alwaysOpaque
          ? Curves.fastLinearToSlowEaseIn
          : config?.curve ?? defaultConfig.curve,
      switchOutCurve: config?.curve ?? defaultConfig.curve,
      layoutBuilder: (child, children) {
        return Stack(
          alignment: alignment ?? Alignment.topCenter,
          fit: fit,
          children: [...children, child!],
        );
      },
      child: child,
    );
  }
}
