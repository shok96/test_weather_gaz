import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../configs/animation_config.dart';

class DelayedChild extends HookWidget {
  const DelayedChild({
    Key? key,
    required this.child,
    this.delay = const Duration(milliseconds: 900),
    this.isDelayed = true,
  }) : super(key: key);

  final Widget child;
  final Duration delay;
  final bool isDelayed;

  @override
  Widget build(BuildContext context) {
    const animationConfig = AnimationNormalConfig();
    final opacity = useState(isDelayed ? 0.0 : 1.0);
    final isMounted = useIsMounted();

    void startTimer() {
      Timer(delay, () {
        if (isMounted()) {
          opacity.value = 1.0;
        }
      });
    }

    useEffect(
      () {
        if (isDelayed) {
          startTimer();
        }
        return;
      },
      [],
    );

    return AnimatedOpacity(
      duration: animationConfig.duration,
      curve: animationConfig.curve,
      opacity: opacity.value,
      child: child,
    );
  }
}
