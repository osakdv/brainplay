import 'package:flutter/material.dart';

import '../../utils/constants.dart';
import './widgets/login_form.dart';
import '../../components/thirdPartyAuthButton/third_party_auth_btn.dart';

class LoginScreen extends StatelessWidget {
  static const routePath = "/login-screen";

  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppConstants.primaryColor,
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // top
                  Column(children: [
                    const SizedBox(
                      height: 70,
                    ),
                    SizedBox(
                      width: 70,
                      height: 70,
                      child: Image.asset('assets/images/logo-white.png'),
                    ),

                    const SizedBox(height: 30),
                    Text('Login',
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge
                            ?.copyWith(color: Colors.white, fontSize: 20)),
                    // form
                    const SizedBox(height: 30),
                    LoginForm(),
                  ]),
                  // bottom

                  Container(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                        Text("Don't hava an account?",
                            style: TextStyle(color: Colors.white)),
                        const SizedBox(width: 4),
                        GestureDetector(
                          onTap: () {},
                          child: Text('Signup',
                              style: TextStyle(color: Colors.white)),
                        )
                      ]))
                ]),
          ),
        )));
  }
}
