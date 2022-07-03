import 'package:flutter/material.dart';
import 'package:marebu/size_config.dart';
import 'package:marebu/styleGuide.dart';
import 'package:marebu/data/onBoardingData.dart';

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
              child: ListView.builder(
                addAutomaticKeepAlives: false,
                scrollDirection: Axis.horizontal,
                itemCount: listDataOnboarding.length,
                itemBuilder: (context, index) {
                  final DataOnboarding data = listDataOnboarding[index];
                  return Column(
                    children: <Widget>[
                      Spacer(),
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
                },
              ),
            ),
            Expanded(flex: 1, child: SizedBox())
          ],
        ),
      ),
    );
  }
}
