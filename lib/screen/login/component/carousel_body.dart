import 'package:flutter/material.dart';
import 'package:marebu/data/carousel_login.dart';
import 'package:marebu/size_config.dart';
import 'package:marebu/styleGuide.dart';

class CarouselContent extends StatelessWidget {
  const CarouselContent({
    Key? key,
    required this.data,
  }) : super(key: key);

  final DataLogin data;

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Container(
        width: getProportionateScreenWidth(700),
        child: Image.network(
          data.image,
          fit: BoxFit.cover,
        ),
      ),
      Container(
        decoration: BoxDecoration(color: Colors.black45),
        height: getProportionateScreenHeight(414),
      ),
    ]);
  }
}
