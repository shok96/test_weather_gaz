// Place fonts/icomoon.ttf in your fonts/ directory and
// add the following to your pubspec.yaml
// flutter:
//   fonts:
//    - family: icomoon
//      fonts:
//       - asset: fonts/icomoon.ttf
import 'package:flutter/widgets.dart';

class Icomoon {
  Icomoon._();

  static const String _fontFamily = 'icomoon';

  static const IconData pin = IconData(0xe904, fontFamily: _fontFamily);
  static const IconData drop = IconData(0xe903, fontFamily: _fontFamily);
  static const IconData wind = IconData(0xe900, fontFamily: _fontFamily);
  static const IconData eye = IconData(0xe901, fontFamily: _fontFamily);
  static const IconData eye_off = IconData(0xe902, fontFamily: _fontFamily);
}
