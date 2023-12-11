import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart' as adapt;

extension NumberExtensions on num {

  double get hA => adapt.ScreenUtil().setHeight(this);

  double get wA => adapt.ScreenUtil().setWidth(this);

  SizedBox get h => SizedBox(height: hA);

  SizedBox get w => SizedBox(width: wA);

  double get rA => adapt.ScreenUtil().radius(this);

  double get spA => adapt.ScreenUtil().setSp(this);

  // SizedBox get h => SizedBox(height: double.parse(toString()));
  //
  // SizedBox get w => SizedBox(width: double.parse(toString()));
}

extension FigmaDimention on double {
  double toFigmaHeight(double fontSize) {
    return this / fontSize;
  }
}

extension Weather on num {
  String toTempCelsia() {
    return "${_formatNumber()}\u00B0";
  }

  String toWind(AppLocalizations localizations) {
    return "$this ${localizations.wind_speed}";
  }

  String toVlaj() {
    return "$this%";
  }

  String _formatNumber() {
    String str = toStringAsFixed(1);
    return str.endsWith('.0') ? str.substring(0, str.length - 2) : str;
  }
}

extension Time on int {
  String toDay() {
    final formatter = DateFormat('d MMMM', 'ru_RU');
    return formatter.format(DateTime.fromMillisecondsSinceEpoch(this * 1000));
  }
  String toTime() {
    final formatter = DateFormat('HH:mm');
    return formatter.format(DateTime.fromMillisecondsSinceEpoch(this * 1000));
  }
  DateTime unixToDateTime() {
    return DateTime.fromMillisecondsSinceEpoch(this * 1000);
  }
}
