import 'package:flutter/material.dart';
import 'package:marebu/screen/component/bodyOnboarding.dart';
import 'package:marebu/size_config.dart';
import 'package:marebu/styleGuide.dart';

class OnBoarding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: BodyOnboarding(),
    );
  }
}
