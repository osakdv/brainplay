import 'package:flutter/material.dart';

import '../../utils/constants.dart';
import '../../components/button/custom_button.dart';
import './personalization_2_screen.dart';

class Personalization1Screen extends StatelessWidget {
  static const routePath = "/personalization1-screen";
  const Personalization1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstants.primaryColor,
      body: SafeArea(
        child: Center(
          child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // top
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 15),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 30.0),
                      decoration: BoxDecoration(
                          color: AppConstants.orangeColor,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Make BrainPlay yours",
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge
                                ?.copyWith(color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            width: 113,
                            height: 196.67169189453125,
                            child: Image.asset("assets/images/robot.png"),
                          ),
                          Text(
                            "Let's Customize your Learning Experience",
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall
                                ?.copyWith(color: Colors.white),
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    ),
                  ),

                  // bottom
                  Padding(
                      padding:
                          const EdgeInsets.only(top: 30, left: 16, right: 16),
                      child: CustomButton(
                        onTap: () {
                          Navigator.of(context)
                              .pushNamed(Personalization2Screen.routePath);
                        },
                        bgColor: Colors.white,
                        textColor: Colors.black,
                        title: "Continue",
                      ))
                ],
              )),
        ),
      ),
    );
  }
}
