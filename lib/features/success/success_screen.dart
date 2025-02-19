import 'package:flutter/material.dart';

import './widgets/signup_success.dart';

class SuccessScreen extends StatelessWidget {
  static const routePath = "/success-screen";
  
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SignupSuccess(),
      )
    );
  }
}