import 'package:flutter/material.dart';
import 'package:testweathergaz/extensions/num_extansions.dart';

import '../animations/widgets/collapsable_child.dart';
import '../res/colors.dart';
import '../theme/typography/typography.dart';


class ErrorBox extends StatelessWidget {
  const ErrorBox({
    Key? key,
    this.error,
    this.inverseColor = false,
  }) : super(key: key);

  final String? error;
  final bool inverseColor;

  @override
  Widget build(BuildContext context) {
    return CollapsibleChild(
      child: error != null
          ? Container(
              decoration: BoxDecoration(
                color: !inverseColor
                    ? warning
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(8.rA),
              ),
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 16.0.wA,
                  vertical: 12.0.hA,
                ),
                child: Text(
                  error!,
                  style: ProjectTypography.captionBold.copyWith(
                    color: !inverseColor
                        ? Colors.white
                        : warning,
                  ),
                ),
              ),
            )
          : null,
    );
  }
}
