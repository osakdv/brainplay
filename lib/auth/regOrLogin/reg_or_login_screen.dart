import 'package:flutter/material.dart';

import '../../utils/constants.dart';
import './widgets/r_or_l_form.dart';
import '../../components/thirdPartyAuthButton/third_party_auth_btn.dart';

class RegOrLoginScreen extends StatelessWidget {
  static const routePath = "/reg-or-login-screen";

  const RegOrLoginScreen({super.key});

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
                    Text('Login or Signup',
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge
                            ?.copyWith(color: Colors.white, fontSize: 20)),
                    // form
                    const SizedBox(height: 30),
                    RegOrLoginForm(),
                    const SizedBox(height: 50),
                    // divider
                    Container(
                        child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                          Divider(),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Text('Or',
                                style: TextStyle(color: Colors.white)),
                          ),
                          Divider(),
                        ])),
                    // third party auth
                    const SizedBox(height: 50),
                    _buildThirdPartyAuth(),
                  ]),
                  // bottom

                  Container(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                        Text('Existing user?',
                            style: TextStyle(color: Colors.white)),
                        const SizedBox(width: 4),
                        GestureDetector(
                          onTap: () {},
                          child: Text('Login',
                              style: TextStyle(color: Colors.white)),
                        )
                      ]))
                ]),
          ),
        )));
  }

  Widget _buildThirdPartyAuth() {
    return Column(
      children: [
        GoogleAuthButton(
          onTap: () {},
        ),
        const SizedBox(
          height: 14,
        ),
        AppleAuthButton(
          onTap: () {},
        ),
        const SizedBox(
          height: 14,
        ),
        FacebookAuthButton(
          onTap: () {},
        ),
      ],
    );
  }
}
