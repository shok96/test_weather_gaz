import 'package:app_settings/app_settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:testweathergaz/extensions/num_extansions.dart';
import 'package:testweathergaz/features/auth/views/cubit/auth_cubit.dart';
import 'package:testweathergaz/ui/res/colors.dart';
import 'package:testweathergaz/ui/theme/typography/typography.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../widgets/button.dart';

void showDialogLocation(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      final localizations = AppLocalizations.of(context)!;
      return AlertDialog(
        title: Text(
          localizations.dialog_location_title,
          style: ProjectTypography.b1RobotoMedium.copyWith(color: black),
          textAlign: TextAlign.center,
        ),
        content: Text(
          localizations.dialog_location_text,
          style: ProjectTypography.b2RobotoMedium.copyWith(color: black),
        ),
        actions: <Widget>[
          Button(
            isInverted: true,
            text: localizations.dialog_location_button,
            action: () {
              AppSettings.openAppSettings(type: AppSettingsType.location);
              context.pop();
            },
          ),
        ],
      );
    },
  );
}

void showDialogExit(
  BuildContext context,
  AuthCubit authCubit,
) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      final localizations = AppLocalizations.of(context)!;
      return AlertDialog(
        title: Text(
          localizations.dialog_exit_title,
          style: ProjectTypography.b1RobotoMedium.copyWith(color: black),
          textAlign: TextAlign.center,
        ),
        content: Text(
          localizations.dialog_exit_text,
          style: ProjectTypography.b2RobotoMedium.copyWith(color: black),
        ),
        actions: <Widget>[
          Button(
            isInverted: true,
            text: localizations.dialog_exit_button_yes,
            action: () {
             authCubit.logout();
              context.pop();
            },
          ),
          8.h,
          Button(
            text: localizations.dialog_exit_button_no,
            action: () {
              context.pop();
            },
          ),
        ],
      );
    },
  );
}
