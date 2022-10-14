import 'package:flutter/material.dart';
import 'package:grab_eat_ui/constants.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final controller = PageController();
  double get width => MediaQuery.of(context).size.width;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: buildPageView(),
          ),
          Positioned(
            top: 140,
            left: (width / 2) - 20,
            child: buildPageIndicator(),
          ),
          Positioned.fill(
            top: 190,
            child: Align(
              alignment: Alignment.topCenter,
              child: Text(
                'Welcome to Pineapple',
                style: AppFonts.pageHeader1,
              ),
            ),
          ),
          Positioned.fill(
            top: 235,
            child: Align(
              alignment: Alignment.topCenter,
              child: Text(
                'Find almost everything you need',
                style: AppFonts.smallBodyText,
              ),
            ),
          ),
          Positioned.fill(
            top: 259,
            child: Align(
              alignment: Alignment.topCenter,
              child: Text(
                'to give your meal a value it deserves',
                style: AppFonts.smallBodyText,
              ),
            ),
          ),
          Positioned.fill(
            child: Align(
              alignment: Alignment.bottomRight,
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Skip',
                  style: AppFonts.textButton,
                ),
              ),
            ),
          )
        ],
      ),
      backgroundColor: AppColors.backgroundColor,
    ));
  }

  Widget buildPageView() {
    return Container(
      constraints: BoxConstraints.expand(height: 166, width: width),
      child: PageView(
        controller: controller,
        children: [
          for (int i = 0; i < 3; i++)
            Container(
              color: Color(0xFFD9D9D9),
            ),
        ],
      ),
    );
  }

  Widget buildPageIndicator() {
    return SmoothPageIndicator(
      controller: controller,
      count: 3,
      effect: WormEffect(
          dotHeight: 10,
          dotWidth: 10,
          activeDotColor: AppColors.appPrimaryColor,
          dotColor: AppColors.appSecondaryColor),
    );
  }
}
