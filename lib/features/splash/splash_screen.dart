import 'package:flutter/material.dart';

import '../onboarding/onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  static const routePath = "/splash-screen";

  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 6), () {
      Navigator.pushReplacementNamed(context, OnboardingScreen.routePath);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 108,
                height: 108,
                child: Image.asset('assets/images/Logo.png')
              ),
              const SizedBox(height: 5,),
              Text('BrainPlay', style: Theme.of(context).textTheme.headlineMedium)
            ],
          ),
        ),
      ),
    );
  }
}
