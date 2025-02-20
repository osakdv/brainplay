import 'package:flutter/material.dart';

import '../../../utils/constants.dart';
import '../../../components/button/custom_button.dart';

class PersonalizationLayout extends StatelessWidget {
  const PersonalizationLayout({super.key});

  @override
  Widget build(BuildContext context) {
    MediaQueryData mq = MediaQuery.of(context);

    return SizedBox(
      height: mq.size.height,
      width: mq.size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // top
          Column(
            children: [
              // prgress bar
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: const Icon(Icons.arrow_back)),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: mq.size.width * 0.7,
                    height: 10,
                    decoration: BoxDecoration(
                      color: Color(0xFFD9D9D9),
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: FractionallySizedBox(
                      alignment: Alignment.centerLeft,
                      widthFactor: 0.3,
                      child: Container(
                        height: double.infinity,
                        decoration: BoxDecoration(
                          color: AppConstants.primaryColor,
                          borderRadius: BorderRadius.circular(7),
                        ),
                      ),
                    ),
                  ),

                  // content
                ],
              ),
            ],
          ),

          // button
          CustomButton(onTap: () {},)
        ],
      ),
    );
  }
}
