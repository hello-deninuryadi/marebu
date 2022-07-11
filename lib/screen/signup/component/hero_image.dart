import 'package:flutter/material.dart';
import 'package:marebu/styleGuide.dart';
import 'package:marebu/size_config.dart';

class heroImage extends StatelessWidget {
  const heroImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        width: getProportionateScreenWidth(414),
        height: getProportionateScreenHeight(192),
        child: Image.network(
          'https://images.unsplash.com/photo-1604063165585-e17e9c3c3f0b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=869&q=80',
          fit: BoxFit.cover,
        ),
      ),
      Container(
        width: getProportionateScreenWidth(414),
        height: getProportionateScreenHeight(192),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.black38, Colors.black12],
          ),
        ),
      )
    ]);
  }
}
