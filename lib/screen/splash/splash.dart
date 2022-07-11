import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:marebu/screen/intro/onboarding.dart';
import 'package:marebu/size_config.dart';
import 'package:marebu/styleGuide.dart';
import 'package:page_transition/page_transition.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return AnimatedSplashScreen(
      splash: Column(
        children: [
          Image.asset(
            'asset/image/marebu_logo.png',
            height: 196,
            width: 246,
          )
        ],
      ),
      backgroundColor: pressedColor,
      nextScreen: OnBoarding(),
      splashIconSize: 250,
      duration: 2000,
      splashTransition: SplashTransition.fadeTransition,
      pageTransitionType: PageTransitionType.leftToRightWithFade,
    );
  }
}
