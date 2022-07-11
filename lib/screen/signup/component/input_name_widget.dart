import 'package:flutter/material.dart';
import 'package:marebu/size_config.dart';
import 'package:marebu/styleGuide.dart';

class inputName extends StatelessWidget {
  const inputName({
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
            Icons.person,
            size: 24,
          ),
          Container(
            margin: EdgeInsets.only(
                left: getProportionateScreenHeight(12),
                right: getProportionateScreenWidth(12)),
            child: Text(
              "|",
              style: TextStyle(fontSize: 20),
            ),
          ),
          Expanded(
              child: TextField(
            decoration: InputDecoration(
                labelText: "Full Name",
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
