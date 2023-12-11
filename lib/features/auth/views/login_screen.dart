import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testweathergaz/extensions/num_extansions.dart';
import 'package:testweathergaz/features/auth/views/cubit/auth_validation_cubit.dart';
import 'package:testweathergaz/ui/theme/typography/typography.dart';
import 'package:testweathergaz/ui/widgets/button.dart';
import 'package:testweathergaz/ui/widgets/hide_gesture_keyboard_area.dart';
import 'package:testweathergaz/ui/widgets/input.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../../ui/res/colors.dart';
import 'cubit/auth_cubit.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  static const router = "/login";

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;

    return Scaffold(
      body: SafeArea(
        child: HideGestureKeyboardArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24.0,
              vertical: 48.0,
            ),
            child: SizedBox(
              width: double.infinity,
              child: BlocBuilder<AuthCubit, AuthState>(
                builder: (context, stateAuth) {
                  return BlocBuilder<AuthValidationCubit, AuthValidationState>(
                    builder: (context, stateValidation) {
                      final cubit = context.read<AuthValidationCubit>();
                      return SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              localizations.login_screen_enter,
                              style: ProjectTypography.h1Ubuntu.copyWith(
                                color: black,
                              ),
                            ),
                            12.h,
                            Text(
                              localizations.login_screen_enter_data,
                              style: ProjectTypography.b2Roboto.copyWith(
                                color: greyText,
                              ),
                            ),
                            50.h,
                            Input(
                              focusNode: cubit.emailFocus,
                              controller: cubit.emailCntrl,
                              inputErrorController: cubit.emailErrorCntrl,
                              hint: localizations.login_screen_hint_email,
                            ),
                            50.h,
                            Input(
                              focusNode: cubit.passFocus,
                              controller: cubit.passCntrl,
                              inputErrorController: cubit.passErrorCntrl,
                              hint: localizations.login_screen_hint_password,
                              isHidable: true,
                            ),
                            48.h,
                            Button(
                              isEnable: stateValidation.isPassword &&
                                  stateValidation.isEmail &&
                                  stateAuth.maybeWhen(
                                    orElse: () => true,
                                    fetch: () => false,
                                  ),
                              isLoading: stateAuth.maybeWhen(
                                orElse: () => false,
                                fetch: () => true,
                              ),
                              text: localizations.login_screen_button,
                              action: () {
                                cubit.login();
                              },
                              isInverted: stateValidation.isPassword &&
                                  stateValidation.isEmail &&
                                  stateAuth.maybeWhen(
                                    orElse: () => true,
                                    fetch: () => false,
                                  ),
                            ),
                            stateAuth.maybeWhen(
                              orElse: () => Padding(
                                padding: const EdgeInsets.only(top: 36),
                                child: Text(
                                  stateAuth.maybeWhen(
                                    orElse: () => "",
                                    notFound: () => localizations
                                        .login_screen_user_not_found,
                                    wrongPassword: () => localizations
                                        .login_screen_user_wrong_password,
                                  ),
                                  style: ProjectTypography.h1Ubuntu.copyWith(
                                    color: warning,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              initial: () => const SizedBox.shrink(),
                              fetch: () => const SizedBox.shrink(),
                              auth: () => const SizedBox.shrink(),
                              unAuth: () => const SizedBox.shrink(),
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
