import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class ScaleOnTap extends HookWidget {
  const ScaleOnTap({
    Key? key,
    required this.child,
    required this.onTap,
    this.isDisabled = false,
    this.isAnimationDisabled = false,
    this.isOneTimeCall = false,
  }) : super(key: key);

  final Widget child;
  final VoidCallback onTap;
  final bool isDisabled;
  final bool isAnimationDisabled;

  final bool isOneTimeCall;

  static const _targetScale = 0.95;
  static const _duration = Duration(milliseconds: 100);
  static const _curve = Curves.easeInOut;

  @override
  Widget build(BuildContext context) {
    final scale = useState(1.0);
    final trot = useValueNotifier(false);
    final isBlockedAsOneTime = useValueNotifier(false);
    // final isMounted = useIsMounted();

    void onTapDown() {
      if (isDisabled) return;
      if (isBlockedAsOneTime.value) return;
      if (isAnimationDisabled) return;
      scale.value = _targetScale;
    }

    void onTapUp() {
      if (isDisabled) return;
      if (isAnimationDisabled) return;
      scale.value = 1.0;
    }


    void onTapAction() {
      if (isDisabled) return;
      if (isBlockedAsOneTime.value) return;
      if (trot.value) return;
      // trot.value = true;
      final delay = isAnimationDisabled ? Duration.zero : _duration;
      Timer(delay, () {
        onTap();
        onTapUp();
        isBlockedAsOneTime.value = isOneTimeCall;
      });

      // Timer(_duration * 2, () {
      //   if (!isMounted()) return;
      //   trot.value = false;
      // });
    }

    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onTapAction,
      onTapDown: (_) => onTapDown(),
      onTapCancel: onTapUp,
      child: AnimatedScale(
        duration: _duration,
        scale: scale.value,
        curve: _curve,
        child: child,
      ),
    );
  }
}
