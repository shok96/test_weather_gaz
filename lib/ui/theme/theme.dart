import 'package:flutter/material.dart';

import '../res/colors.dart';

class AppTheme{

  static ThemeData theme(BuildContext context) => ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: white,
    textTheme: Theme.of(context)
        .textTheme
        .apply(
      bodyColor: white,
      displayColor: white,
    ),
  );

}