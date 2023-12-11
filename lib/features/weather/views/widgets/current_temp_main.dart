import 'package:flutter/cupertino.dart';
import 'package:testweathergaz/extensions/num_extansions.dart';
import 'package:testweathergaz/ui/widgets/skeleton.dart';

import '../../../../ui/res/colors.dart';
import '../../../../ui/res/images.dart';
import '../../../../ui/theme/typography/typography.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CurrentTempMain extends StatelessWidget {
  const CurrentTempMain({
    super.key,
    required this.icon,
    required this.tempMin,
    required this.tempMax,
    required this.temp,
    required this.status,
  });

  final String icon;
  final String temp, status, tempMin, tempMax;

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        DecoratedBox(
          decoration: const BoxDecoration(shape: BoxShape.circle, boxShadow: [
            BoxShadow(
              color: violetPink,
              blurRadius: 70,
            )
          ]),
          child: Image.asset(
            icon,
            width: 160,
            height: 160,
          ),
        ),
        Text(
          temp,
          style: ProjectTypography.temp,
        ),
        Text(
          status,
          style: ProjectTypography.b1Roboto,
        ),
        8.h,
        Text(
          localizations.temp_min_temp_max(tempMax, tempMin),
          style: ProjectTypography.b1Roboto,
        ),
      ],
    );
  }
}

class CurrentTempMainSkeleton extends StatelessWidget {
  const CurrentTempMainSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;
    return Skeleton(
      widgetBase: CurrentTempMain(
        icon: ProjectImageAssets.sunBigAssets,
        tempMin: localizations.weather_skeleton_data,
        tempMax: localizations.weather_skeleton_data,
        temp: localizations.weather_skeleton_data,
        status: localizations.weather_skeleton_data,
      ),
    );
  }
}
