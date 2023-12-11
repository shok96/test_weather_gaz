import 'dart:async';

import 'package:flutter/material.dart';

import '../configs/animation_config.dart';

class RiderAnimatedSize extends StatelessWidget {
  const RiderAnimatedSize({
    Key? key,
    required this.child,
    this.alignment,
    AnimationConfigData? config,
    this.onSizeChanged,
  })  : config = config ?? const AnimationNormalConfig(),
        super(key: key);

  const RiderAnimatedSize.smooth({
    Key? key,
    required this.child,
    this.alignment,
    this.onSizeChanged,
  })  : config = const AnimationSmoothConfig(),
        super(key: key);

  const RiderAnimatedSize.rapid({
    Key? key,
    required this.child,
    this.alignment,
    this.onSizeChanged,
  })  : config = const AnimationRapidConfig(),
        super(key: key);

  final Widget child;
  final AnimationConfigData config;
  final AlignmentGeometry? alignment;
  final VoidCallback? onSizeChanged;

  @override
  Widget build(BuildContext context) {
    return NotificationListener<SizeChangedLayoutNotification>(
      onNotification: (_) {
        scheduleMicrotask(() {
          onSizeChanged?.call();
        });
        return true;
      },
      child: AnimatedSize(
        alignment: alignment ?? Alignment.topCenter,
        duration: config.duration,
        curve: config.curve,
        child: SizeChangedLayoutNotifier(child: child),
      ),
    );
  }
}
