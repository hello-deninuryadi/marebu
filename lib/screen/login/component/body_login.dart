import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:marebu/data/carousel_login.dart';
import 'package:marebu/screen/login/component/carousel_body.dart';
import 'package:marebu/screen/login/component/carousel_wiget.dart';
import 'package:marebu/screen/login/component/default_button.dart';
import 'package:marebu/screen/login/component/header_widget.dart';
import 'package:marebu/screen/login/component/helper.dart';
import 'package:marebu/screen/login/component/input_email_or_email.dart';
import 'package:marebu/screen/login/component/input_password.dart';
import 'package:marebu/size_config.dart';
import 'package:marebu/styleGuide.dart';

class BodyLogin extends StatefulWidget {
  @override
  _BodyLogin createState() => _BodyLogin();
}

class _BodyLogin extends State<BodyLogin> {
  @override
  Widget build(BuildContext context) {
    resizeToAvoidBottomInset:
    false;
    final isKeyboard = MediaQuery.of(context).viewInsets.bottom != 0;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          if (!isKeyboard) const carousel(),
          const header(),
          const input_email_or_phone(),
          const input_password(),
          const helper_login_widget(),
          default_button(
            place_holder_text: "Login",
            navigasi: "/home",
          ),
        ],
      ),
    );
  }
}










// Widget CarouselContentTest(String image, String title, String desc,int index)