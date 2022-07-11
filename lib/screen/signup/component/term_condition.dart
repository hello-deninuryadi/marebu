import 'package:flutter/material.dart';
import 'package:marebu/size_config.dart';
import 'package:marebu/styleGuide.dart';

class termCondition extends StatefulWidget {
  @override
  _termCondition createState() => _termCondition();
}

class _termCondition extends State<termCondition> {
  bool value = false;

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
          Row(
            children: [
              Checkbox(
                  value: value,
                  onChanged: (value) {
                    setState(() {
                      this.value = value!;
                    });
                  }),
              Text(
                'I agree to \nthe Terms & Conditions',
                style: Body.copyWith(
                  fontSize: 12,
                  color: primaryColor,
                ),
              ),
            ],
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, "/log-in");
            },
            child: Text(
              'You have account ? Login',
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
