import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:marebu/data/carousel_login.dart';
import 'package:marebu/screen/login/component/carousel_body.dart';
import 'package:marebu/size_config.dart';
import 'package:marebu/styleGuide.dart';

class carousel extends StatelessWidget {
  const carousel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      options: CarouselOptions(
          autoPlay: true, viewportFraction: 1, enlargeCenterPage: true),
      itemCount: listDataLogin.length,
      itemBuilder: (context, index, real_index) {
        final DataLogin data = listDataLogin[index];
        return CarouselContent(data: data);
      },
    );
  }
}
