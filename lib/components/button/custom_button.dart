import 'package:flutter/material.dart';

import '../../utils/constants.dart';

class CustomButton extends StatelessWidget {
  final double? width;
  final String? title;
  final VoidCallback onTap;
  final Color? bgColor;
  final Color? textColor;
  bool? forwardIcon;

   CustomButton(
      {this.width,
      this.title = "Get Started",
      required this.onTap,
      this.bgColor = AppConstants.orangeColor,
      this.textColor = Colors.white,
      this.forwardIcon = true,
      super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width ?? double.infinity,
        height: 47,
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(7),
        ),
        child: Center(
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              title!,
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(color: textColor),
            ),
            const SizedBox(
              width: 10,
            ),
            forwardIcon == true ? const Icon(Icons.arrow_forward_ios,
                    size: 14, color: Colors.white)  : Container(),
          ]),
        ),
      ),
    );
  }
}
