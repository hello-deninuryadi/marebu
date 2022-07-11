import 'package:flutter/material.dart';
import 'package:marebu/size_config.dart';
import 'package:marebu/styleGuide.dart';

class input_password extends StatelessWidget {
  const input_password({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          left: getProportionateScreenWidth(16),
          right: getProportionateScreenWidth(16),
          top: getProportionateScreenHeight(32)),
      child: Row(
        children: [
          Icon(
            Icons.lock,
            size: 24,
          ),
          Container(
            margin: EdgeInsets.only(
                left: getProportionateScreenWidth(12),
                right: getProportionateScreenWidth(12)),
            child: Text(
              "|",
              style: TextStyle(fontSize: 20),
            ),
          ),
          Expanded(
              child: TextField(
            obscureText: true,
            decoration: InputDecoration(
                labelText: "Your password",
                labelStyle: Body.copyWith(
                  fontSize: 18,
                  fontWeight: reguler,
                  color: Color(0xFF757575),
                )),
          ))
        ],
      ),
    );
  }
}
