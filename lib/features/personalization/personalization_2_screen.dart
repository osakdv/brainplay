import 'package:flutter/material.dart';

import '../../utils/constants.dart';
import '../../components/button/custom_button.dart';
import './widgets/personalization_layout.dart';

class Personalization2Screen extends StatelessWidget {
  static const routePath = "/personalization2-screen";
  const Personalization2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0, top: 10.0),
              child: PersonalizationLayout()),
        ),
      ),
    );
  }
}
