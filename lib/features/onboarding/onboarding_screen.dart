import 'package:flutter/material.dart';

import '../../utils/constants.dart';
import '../../components/button/custom_button.dart';
import '../../auth/regOrLogin/reg_or_login_screen.dart';

class OnboardingScreen extends StatefulWidget {
  static const routePath = "/onboarding-screen";

  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  PageController _pageController = PageController();
  var _currentIndex = 0;

  final List<Map<String, dynamic>> _slideContent = [
    {
      "image": "assets/images/girl_reading.png",
      "title": "Immersion in the world of knowledge",
      "paragraph":
          "Our assignments will help you deepen your knowldge of math, languages, history, science and more!",
      "button": false,
    },
    {
      "image": "assets/images/boy_reading.png",
      "title": "Learn on the GO",
      "paragraph":
          "Learn through short, interactive courses anywhere in the world",
      "button": false,
    },
    {
      "image": "assets/images/couple_reading.png",
      "title": "People around the world use BrainPlay to learn",
      "paragraph":
          "Join a community of students, enthusiasts, olympic champions, researchers and professionals",
      "button": true,
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstants.primaryColor,
      body: SafeArea(
        child: Center(
            child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),

            // slide
            _slideWidget(context),
            const SizedBox(
              height: 100,
            ),
            _buildPageIndicator(),
          ],
        )),
      ),
    );
  }

  Widget _slideWidget(ctx) {
    return Expanded(
      child: PageView.builder(
          controller: _pageController,
          itemCount: _slideContent.length,
          onPageChanged: (index) {
            setState(
              () => _currentIndex = index,
            );
          },
          itemBuilder: (_, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: MediaQuery.of(ctx).size.height * .35,
                    child: Image.asset(_slideContent[index]['image']),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  SizedBox(
                      // width: MediaQuery.of(context).size.width * .7,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                        Text(_slideContent[index]['title'],
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge
                                ?.copyWith(color: Colors.white, fontSize: 20),
                            textAlign: TextAlign.center),
                        const SizedBox(
                          height: 12,
                        ),
                        Text(
                          _slideContent[index]['paragraph'],
                          style:
                              Theme.of(context).textTheme.bodySmall?.copyWith(
                                    color: Colors.white,
                                  ),
                          textAlign: TextAlign.center,
                        ),
                      ])),
                  const SizedBox(
                    height: 40,
                  ),
                  _slideContent[index]['button'] == true
                      ? CustomButton(
                          title: "Get Started",
                          onTap: () {
                            Navigator.of(ctx).pushReplacementNamed(
                                RegOrLoginScreen.routePath);
                          },
                        )
                      : Container(),
                ],
              ),
            );
          }),
    );
  }

  Widget _buildPageIndicator() {
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ...List.generate(_slideContent.length, (i) {
            return Container(
              width: 7,
              height: 7,
              margin: const EdgeInsets.only(left: 5),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: i == _currentIndex ? Colors.white : Color(0xFFB5B4B4)),
            );
          }),
        ],
      ),
    );
  }
}
