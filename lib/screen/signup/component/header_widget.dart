import 'package:flutter/material.dart';
import 'package:marebu/size_config.dart';
import 'package:marebu/styleGuide.dart';

class header extends StatelessWidget {
  const header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          top: getProportionateScreenHeight(12),
          left: getProportionateScreenWidth(16),
          right: getProportionateScreenWidth(16)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Create Account",
            style: Title1.copyWith(fontSize: 24, color: primaryColor),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            "Easy steps to make your life easier",
            style: Body.copyWith(color: Color(0xff616161)),
          )
        ],
      ),
    );
  }
}
