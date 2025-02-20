import 'package:flutter/material.dart';

import './utils/theme.dart';
import './auth/regOrLogin/reg_or_login_screen.dart';
import './auth/login/login_screen.dart';
import './auth/register/register_screen.dart';
import './features/splash/splash_screen.dart';
import './features/onboarding/onboarding_screen.dart';
import './features/success/success_screen.dart';
import './features/personalization/personalization_1_screen.dart';
import './features/personalization/personalization_2_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'BrainPlay',
        debugShowCheckedModeBanner: false,
        theme: AppThemes.lightTheme,
        initialRoute: Personalization1Screen.routePath,
        routes: {
          SplashScreen.routePath: (_) => SplashScreen(),
          OnboardingScreen.routePath: (_) => OnboardingScreen(),
          RegOrLoginScreen.routePath: (_) => RegOrLoginScreen(),
          RegisterScreen.routePath: (_) => RegisterScreen(),
          LoginScreen.routePath: (_) => LoginScreen(),
          SuccessScreen.routePath: (_) => SuccessScreen(),
          Personalization1Screen.routePath: (_) => Personalization1Screen(),
          Personalization2Screen.routePath: (_) => Personalization2Screen()
        });
  }
}
