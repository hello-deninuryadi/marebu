import 'package:flutter/material.dart';
import 'package:marebu/data/onboarding_data.dart';
import 'package:marebu/size_config.dart';
import 'package:marebu/styleGuide.dart';

class OnBoardingContent extends StatelessWidget {
  const OnBoardingContent({
    Key? key,
    required this.data,
  }) : super(key: key);

  final DataOnboarding data;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 50.0,
        ),
        Image.asset(
          data.image,
          height: getProportionateScreenHeight(316),
          width: getProportionateScreenWidth(444),
        ),
        const SizedBox(
          height: 47.5,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                data.title,
                textAlign: TextAlign.left,
                style: Title1.copyWith(
                    fontSize: getProportionateScreenWidth(36),
                    fontWeight: semiBold),
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                data.desc,
                textAlign: TextAlign.justify,
                style: Body.copyWith(
                  fontSize: getProportionateScreenWidth(14),
                  fontWeight: reguler,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
