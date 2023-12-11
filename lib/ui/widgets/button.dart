import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../animations/widgets/scale_on_tap.dart';
import '../res/colors.dart';
import '../theme/typography/typography.dart';

class Button extends StatelessWidget {
  const Button({
    super.key,
    required this.text,
    required this.action,
    this.isInverted = false,
    this.isLoading = false,
    this.isEnable = true,
  });

  final String text;
  final bool isInverted;
  final VoidCallback action;
  final bool isLoading;
  final bool isEnable;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ScaleOnTap(
        isDisabled: isLoading || !isEnable,
        onTap: action,
        child: DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            color: isInverted ? blue07 : null,
            border: Border.all(
              color: isInverted ? Colors.transparent : blue07,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 32,
              vertical: 12,
            ),
            child: isLoading ? Center(child: CircularProgressIndicator()) : Text(
              text,
              style: ProjectTypography.b1RobotoMedium.copyWith(
                color: isInverted ? white : blue07,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
