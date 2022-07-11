import 'package:flutter/material.dart';
import 'package:marebu/screen/login/component/body_login.dart';
import 'package:marebu/screen/login/component/carousel_wiget.dart';
import 'package:marebu/screen/login/component/header_widget.dart';
import 'package:marebu/screen/signup/component/body_signup.dart';
import 'package:marebu/size_config.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: BodySignUp(),
      ),
    );
  }
}
