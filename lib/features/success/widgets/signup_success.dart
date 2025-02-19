import 'package:flutter/material.dart';

import '../../../components/button/custom_button.dart';

class SignupSuccess extends StatelessWidget {
  const SignupSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
        SizedBox(
            width: 108,
            height: 108,
            child: Image.asset('assets/images/Logo.png')),
        const SizedBox(height: 20),
        Text('Welcome, John', style: Theme.of(context).textTheme.displaySmall),
        const SizedBox(height: 10),
        Text('Your profile has been successfully created'),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.3,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: CustomButton(onTap: () {}, title: "Continue", bgColor: Color(0xFF282464), forwardIcon: false,),
        ),
        const SizedBox(height: 20),
      ]),
    );
  }
}
