import 'package:flutter/material.dart';

import '../../utils/constants.dart';
import './widgets/register_form.dart';

class RegisterScreen extends StatelessWidget {
  static const routePath = "/register-screen";
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppConstants.primaryColor,
        body: SafeArea(
            child: Padding(
                padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  // top
                  Column(children: [RegisterForm()]),

                  Container(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                        Text("Already have account?",
                            style: TextStyle(color: Colors.white)),
                        const SizedBox(width: 4),
                        GestureDetector(
                          onTap: () {},
                          child: Text('Login',
                              style: TextStyle(color: Colors.white)),
                        )
                      ]))
                ]))));
  }
}
