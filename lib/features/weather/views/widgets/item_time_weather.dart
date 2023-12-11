import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:testweathergaz/extensions/num_extansions.dart';
import 'package:testweathergaz/ui/res/colors.dart';

import '../../../../ui/theme/typography/typography.dart';

class ItemWeatherTime extends StatelessWidget {
  const ItemWeatherTime({
    super.key,
    required this.icon,
    required this.temp,
    required this.time,
    this.isSwitch = false,
  });

  final String time, temp, icon;
  final bool isSwitch;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: isSwitch
          ? BoxDecoration(
              color: white_40,
              borderRadius: BorderRadius.circular(12.0.rA),
              border: Border.all(
                color: white,
              ),
            )
          : const BoxDecoration(),
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 16.0.hA,
          horizontal: isSwitch ? 16.0.wA : 0,
        ),
        child: Column(
          children: [
            Text(
              time,
              style: ProjectTypography.b2Roboto,
            ),
            17.h,
            SvgPicture.asset(
              icon,
              width: 32.wA,
              height: 32.hA,
            ),
            16.h,
            Text(
              temp,
              style: ProjectTypography.b1RobotoMedium,
            ),
          ],
        ),
      ),
    );
  }
}
