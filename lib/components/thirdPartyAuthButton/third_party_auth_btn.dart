import 'package:flutter/material.dart';

class ThirdPartyAuthBtn extends StatelessWidget {
  final String imgUrl;
  final VoidCallback onTap;
  final Color? bgColor;
  final Color? textColor;
  final String title;

  const ThirdPartyAuthBtn(
      {required this.imgUrl,
      required this.onTap,
      this.bgColor = Colors.white,
      this.textColor = Colors.black,
      required this.title,
      super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          width: double.infinity,
          height: 47,
          decoration: BoxDecoration(
            color: bgColor,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                child: Image.asset(imgUrl),
              ),
              const SizedBox(
                width: 10,
              ),
              Text(title, style: TextStyle(color: textColor)),
            ],
          )),
    );
  }
}

// google
class GoogleAuthButton extends StatelessWidget {
  final VoidCallback onTap;
  const GoogleAuthButton({required this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    return ThirdPartyAuthBtn(
      title: "Join using google",
      imgUrl: "assets/images/google_icon.png",
      onTap: onTap,
    );
  }
}

// apple
class AppleAuthButton extends StatelessWidget {
  final VoidCallback onTap;
  const AppleAuthButton({required this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    return ThirdPartyAuthBtn(
      title: "Join using google",
      imgUrl: "assets/images/apple_icon.png",
      onTap: onTap,
      bgColor: Color(0xFF282464),
      textColor: Colors.white,
    );
  }
}

// facebook
class FacebookAuthButton extends StatelessWidget {
  final VoidCallback onTap;
  const FacebookAuthButton({required this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    return ThirdPartyAuthBtn(
      title: "Join using google",
      imgUrl: "assets/images/facebook_icon.png",
      onTap: onTap,
      bgColor: Color(0xFF000000),
      textColor: Colors.white,
    );
  }
}
