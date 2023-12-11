import 'package:flutter/animation.dart';

abstract class AnimationConfigData {
  const AnimationConfigData();

  Curve get curve => Curves.linearToEaseOut;

  Duration get duration => const Duration(milliseconds: 450);
}

class AnimationNormalConfig extends AnimationConfigData {
  const AnimationNormalConfig();
}

class AnimationSmoothConfig extends AnimationConfigData {
  const AnimationSmoothConfig();

  @override
  Duration get duration => const Duration(milliseconds: 600);
}

class AnimationBouncyConfig extends AnimationConfigData {
  const AnimationBouncyConfig();

  @override
  Duration get duration => const Duration(milliseconds: 600);

  @override
  Curve get curve => Curves.bounceOut;
}

class AnimationExtraSmoothConfig extends AnimationConfigData {
  const AnimationExtraSmoothConfig();

  @override
  Duration get duration => const Duration(milliseconds: 1200);
}

class AnimationRapidConfig extends AnimationConfigData {
  const AnimationRapidConfig();

  @override
  Curve get curve => Curves.linearToEaseOut;

  @override
  Duration get duration => const Duration(milliseconds: 250);
}

class AnimationFlashConfig extends AnimationConfigData {
  const AnimationFlashConfig();

  @override
  Curve get curve => Curves.linearToEaseOut;

  @override
  Duration get duration => const Duration(milliseconds: 150);
}

class AnimationNoneConfig extends AnimationConfigData {
  const AnimationNoneConfig();

  @override
  Curve get curve => Curves.linear;

  @override
  Duration get duration => Duration.zero;
}

class AnimationCustomConfig extends AnimationConfigData {
  const AnimationCustomConfig({
    this.customCurve,
    this.customDuration,
  });

  final Curve? customCurve;
  final Duration? customDuration;

  @override
  Curve get curve => customCurve ?? Curves.linearToEaseOut;

  @override
  Duration get duration => customDuration ?? const Duration(milliseconds: 450);
}
