import 'package:flutter/cupertino.dart';
import 'package:testweathergaz/extensions/num_extansions.dart';

import '../../../../ui/res/colors.dart';
import '../../../../ui/theme/typography/icomoon_icons.dart';
import '../../../../ui/theme/typography/typography.dart';
import '../../../../ui/widgets/skeleton.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class WindVlajWeather extends StatelessWidget {
  const WindVlajWeather({
    super.key,
    required this.speed,
    required this.vlaj,
    required this.vlajDesc,
    required this.windDeg,
  });

  final double speed;
  final int vlaj;
  final String windDeg, vlajDesc;

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;
    return DecoratedBox(
      decoration: BoxDecoration(
        color: white_20,
        borderRadius: BorderRadius.circular(20.rA),
      ),
      child: Padding(
        padding: EdgeInsets.all(16.0.rA),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icomoon.wind,
                        color: white,
                        size: 24.rA,
                      ),
                      8.w,
                      Text(
                        speed.toWind(localizations),
                        style: ProjectTypography.b2RobotoMedium
                            .copyWith(color: white_20),
                      ),
                    ],
                  ),
                ),
                6.w,
                Expanded(
                    flex: 3,
                    child: Text(
                      windDeg,
                      style: ProjectTypography.b2RobotoMedium
                          .copyWith(color: white_20),
                    )),
              ],
            ),
            16.h,
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icomoon.drop,
                        color: white,
                        size: 24.rA,
                      ),
                      8.w,
                      Text(
                        vlaj.toVlaj(),
                        style: ProjectTypography.b2RobotoMedium
                            .copyWith(color: white_20),
                      ),
                    ],
                  ),
                ),
                6.w,
                Expanded(
                    flex: 3,
                    child: Text(
                      vlajDesc,
                      style: ProjectTypography.b2RobotoMedium
                          .copyWith(color: white_20),
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class WindVlajWeatherSkeleton extends StatelessWidget {
  const WindVlajWeatherSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;
    return Skeleton(
      widgetBase: WindVlajWeather(
        speed: 0,
        vlaj: 0,
        vlajDesc: localizations.weather_skeleton_data,
        windDeg: localizations.weather_skeleton_data,
      ),
    );
  }
}
