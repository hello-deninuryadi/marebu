import 'package:flutter/material.dart';
import 'package:marebu/styleGuide.dart';

class header extends StatelessWidget {
  const header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 24),
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Login",
            style: Title1.copyWith(
                fontSize: 24, fontWeight: semiBold, color: primaryColor),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            "To feel the convenience you receive",
            style: Body.copyWith(
              color: Color(0xff616161),
            ),
          )
        ],
      ),
    );
  }
}
