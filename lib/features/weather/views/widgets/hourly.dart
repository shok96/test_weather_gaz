import 'package:flutter/cupertino.dart';
import 'package:testweathergaz/extensions/num_extansions.dart';

import '../../../../ui/res/colors.dart';
import '../../../../ui/res/svg.dart';
import '../../../../ui/theme/typography/typography.dart';
import '../../../../ui/widgets/skeleton.dart';
import 'item_time_weather.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Hourly extends StatelessWidget {
  const Hourly({
    super.key,
    required this.item,
    required this.unixTime,
  });

  final int unixTime;
  final List<ItemWeatherTime> item;

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;
    return DecoratedBox(
      decoration: BoxDecoration(
        color: white_20,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 17.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  localizations.today,
                  style: ProjectTypography.b1RobotoMedium,
                ),
                Text(
                  unixTime.toDay(),
                  style: ProjectTypography.b2Roboto,
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 2,
            color: white,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 17.0,
            ),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: item),
          ),
        ],
      ),
    );
  }
}

class HourlySkeleton extends StatelessWidget {
  const HourlySkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return const Skeleton(
      widgetBase: Hourly(
        unixTime: 0,
        item: [
          ItemWeatherTime(
            icon: ProjectSvgAssets.sunAssets,
            temp: "25",
            time: "14:00",
          ),
          ItemWeatherTime(
            icon: ProjectSvgAssets.cloudSunAssets,
            temp: "23",
            time: "15:00",
            isSwitch: true,
          ),
          ItemWeatherTime(
            icon: ProjectSvgAssets.cloudRainAssets,
            temp: "17",
            time: "17:00",
          ),
          ItemWeatherTime(
            icon: ProjectSvgAssets.cloudMoonAssets,
            temp: "17",
            time: "17:06",
          ),
        ],
      ),
    );
  }
}
