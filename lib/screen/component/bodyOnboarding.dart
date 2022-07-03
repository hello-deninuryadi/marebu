import 'package:flutter/material.dart';
import 'package:marebu/size_config.dart';
import 'package:marebu/styleGuide.dart';
import 'package:marebu/data/onBoardingData.dart';

class BodyOnboarding extends StatefulWidget {
  @override
  _BodyOnboardingState createState() => _BodyOnboardingState();
}

class _BodyOnboardingState extends State<BodyOnboarding> {
  List<Map<String, String>> onboardingData = [
    {
      "title": "Feel free to\nexplore",
      "desc":
          "You can move everywhere while not\nhaving to consider parking problems, so\n going everywhere is easy",
      "image": "asset/image/Splash_1.png"
    },
    {
      "title": "Find a parking\nspace",
      "desc":
          "Don`t hesitate to head anywhere, we are\nable to inform you the closest parking\nplace at",
      "image": "asset/image/Splash_2.png"
    },
    {
      "title": "Book a parking\narea easily",
      "desc": "Book a parking space quickly and easily",
      "image": "asset/image/Splash_3.png"
    }
  ];

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
                  itemCount: onboardingData.length,
                  itemBuilder: (context, index) =>OnBoardingContent(
                    image:onboardingData[index]['image'],
                     ,
                  ),
                      ),
            ),
            Expanded(flex: 1, child: SizedBox())
          ],
        ),
      ),
    );
  }
}

class OnBoardingContent extends StatelessWidget {
  final String title, description, image;
  const OnBoardingContent
  ({Key? key, required this.title,  required this.description,  required this.image}): super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Spacer(),
        Image.asset(
          image,
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
                title,
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
                description,
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
