import 'package:flutter/material.dart';
import 'package:marebu/screen/login/component/default_button.dart';
import 'package:marebu/screen/login/component/header_widget.dart';
import 'package:marebu/screen/signup/component/hero_image.dart';
import 'package:marebu/screen/signup/component/input_email_widget.dart';
import 'package:marebu/screen/signup/component/input_name_widget.dart';
import 'package:marebu/screen/signup/component/input_password_widget.dart';
import 'package:marebu/screen/signup/component/term_condition.dart';
import 'package:marebu/size_config.dart';
import 'package:marebu/styleGuide.dart';

class BodySignUp extends StatefulWidget {
  @override
  _BodySignUp createState() => _BodySignUp();
}

class _BodySignUp extends State<BodySignUp> {
  @override
  Widget build(BuildContext context) {
    resizeToAvoidBottomInset:
    false;
    final isKeyboard = MediaQuery.of(context).viewInsets.bottom != 0;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          if (!isKeyboard) const heroImage(),
          const header(),
          const inputName(),
          const inputEmail(),
          const input_password(),
          const input_password(
            place_holder: "Confirmation Password",
          ),
          termCondition(),
          default_button(
            place_holder_text: "Sign Up",
            navigasi: "",
          ),
          SizedBox(
            height: 24,
          )
        ],
      ),
    );
  }
}
