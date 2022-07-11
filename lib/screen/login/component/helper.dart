import 'package:flutter/material.dart';
import 'package:marebu/size_config.dart';
import 'package:marebu/styleGuide.dart';

class helper_login_widget extends StatelessWidget {
  const helper_login_widget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 382,
      margin: EdgeInsets.only(
          top: getProportionateScreenHeight(24),
          left: getProportionateScreenWidth(16)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, "");
            },
            child: Text(
              'Forgot The password ?',
              style: Body.copyWith(
                fontSize: 12,
                color: primaryColor,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, "/signup");
            },
            child: Text(
              'Create Account',
              style: Body.copyWith(
                fontSize: 12,
                color: primaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
