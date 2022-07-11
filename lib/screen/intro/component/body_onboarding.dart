import 'package:flutter/material.dart';
import 'package:marebu/screen/intro/component/on_boarding_content.dart';
import 'package:marebu/size_config.dart';
import 'package:marebu/styleGuide.dart';
import 'package:marebu/data/onboarding_data.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BodyOnboarding extends StatefulWidget {
  @override
  _BodyOnboardingState createState() => _BodyOnboardingState();
}

class _BodyOnboardingState extends State<BodyOnboarding> {
  PageController _controller = PageController();
  bool lastpage = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: <Widget>[
          PageView.builder(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                lastpage = (index == 2);
              });
            },
            scrollDirection: Axis.horizontal,
            itemCount: listDataOnboarding.length,
            itemBuilder: (context, index) {
              final DataOnboarding data = listDataOnboarding[index];
              return OnBoardingContent(data: data);
            },
          ),
          SizedBox(
            height: getProportionateScreenHeight(50),
          ),
          Container(
            alignment: Alignment(0, 0.75),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                lastpage
                    ? SizedBox()
                    : GestureDetector(
                        onTap: () {
                          _controller.jumpToPage(3);
                        },
                        child: Text("Skip"),
                      ),
                SmoothPageIndicator(
                  controller: _controller,
                  count: 3,
                ),
                lastpage
                    ? GestureDetector(
                        onTap: () {
                          _controller.nextPage(
                              duration: Duration(milliseconds: 500),
                              curve: Curves.easeIn);
                        },
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, "/log-in");
                            },
                            child: Text(
                              "Done",
                              style: TextStyle(
                                  fontFamily: "inter",
                                  fontSize: 16,
                                  fontWeight: semiBold),
                            ),
                            style: ElevatedButton.styleFrom(
                                primary: primaryColor,
                                minimumSize: Size(80, 40))))
                    : GestureDetector(
                        onTap: () {
                          _controller.nextPage(
                              duration: Duration(milliseconds: 500),
                              curve: Curves.easeIn);
                        },
                        child: Text(
                          "Next",
                          style: TextStyle(
                              fontFamily: "inter",
                              fontSize: 16,
                              fontWeight: semiBold),
                        ),
                      )
              ],
            ),
          )
        ],
      ),
    );
  }
}
