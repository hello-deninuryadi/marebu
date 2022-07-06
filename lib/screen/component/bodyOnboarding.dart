import 'package:flutter/material.dart';
import 'package:marebu/size_config.dart';
import 'package:marebu/styleGuide.dart';
import 'package:marebu/data/onBoardingData.dart';
import 'package:marebu/screen/component/OnBoardingContent.dart';

class BodyOnboarding extends StatefulWidget {
  @override
  _BodyOnboardingState createState() => _BodyOnboardingState();
}

class _BodyOnboardingState extends State<BodyOnboarding> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: PageView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: listDataOnboarding.length,
                itemBuilder: (context, index) {
                  final DataOnboarding data = listDataOnboarding[index];
                  return OnBoardingContent(data: data);
                },
              ),
            ),
            SizedBox(
              height: getProportionateScreenHeight(50),
            ),
            Expanded(
                flex: 1,
                child: Column(
                  children: <Widget>[
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          listDataOnboarding.length,
                          (index) => buildDots(index),
                        ))
                  ],
                ))
          ],
        ),
      ),
    );
  }

  Container buildDots(int index) {
    final currentpage = index;
    return Container(
      child: Text("$currentpage"),
      margin: EdgeInsets.all(16),
      height: 12,
      width: currentpage == index ? 56 : 12,
      decoration: BoxDecoration(
        color: currentpage == index ? pressedColor : primaryColor,
        borderRadius: BorderRadius.circular(13),
      ),
    );
  }
}
