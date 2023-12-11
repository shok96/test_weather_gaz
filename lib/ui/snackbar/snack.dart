import 'package:flutter/material.dart';
import 'package:testweathergaz/ui/res/colors.dart';

import '../theme/typography/typography.dart';

void showSnack(
  BuildContext context, {
  required String message,
}) {
  final snack = SnackBar(
    content: SnackContent(
      text: message,
    ),
    margin: const EdgeInsets.all(6.0),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.0)),
    behavior: SnackBarBehavior.floating,
    backgroundColor: blue07,
    elevation: 0.0,
    padding: const EdgeInsets.all(15.0),
  );
  ScaffoldMessenger.of(context).showSnackBar(snack);
}

class SnackContent extends StatelessWidget {
  const SnackContent({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: ProjectTypography.b2RobotoMedium.copyWith(color: white),
    );
  }
}
