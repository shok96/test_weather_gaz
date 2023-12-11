import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:testweathergaz/extensions/num_extansions.dart';
import 'package:testweathergaz/features/auth/views/login_screen.dart';
import 'package:testweathergaz/ui/res/gradients.dart';
import 'package:testweathergaz/ui/theme/typography/typography.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SplashScreen extends HookWidget {
  const SplashScreen({super.key});

  static const router = "/splash";

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;

    useEffect(() {
      Future.delayed(const Duration(seconds: 2), () {
        context.go(LoginScreen.router);
      });
      return null;
    }, []);

    return Scaffold(
      body: DecoratedBox(
        decoration: const BoxDecoration(
          gradient: splashGradient,
        ),
        child: SafeArea(
          child: SizedBox(
            width: double.infinity,
            child: Padding(
              padding: EdgeInsets.fromLTRB(
                43.wA,
                0,
                43.wA,
                86.hA,
              ),
              child: Column(
                children: [
                  const Spacer(),
                  Text(
                    localizations.splash_title.toUpperCase(),
                    style: ProjectTypography.splashTitle,
                    textAlign: TextAlign.left,
                  ),
                  const Spacer(),
                  Text(
                    localizations.splash_sub_title,
                    style: ProjectTypography.splashSubTitle,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
