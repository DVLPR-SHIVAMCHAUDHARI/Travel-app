import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:travel/consts/asseturl.dart';
import 'package:travel/consts/typography.dart';
import 'package:travel/main.dart';

class Onboardingscreen extends StatefulWidget {
  Onboardingscreen({super.key});

  @override
  State<Onboardingscreen> createState() => _OnboardingscreenState();
}

class _OnboardingscreenState extends State<Onboardingscreen> {
  PageController pageController = PageController();

  int _currentPage = 0;

  void _nextPage() {
    if (_currentPage < 2) {
      pageController.animateToPage(
        _currentPage += 1,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
    // if (_currentPage == 2) {
    //   // GoRouter.of(context).goNamed(Routes.login.name);
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Expanded(
          child: Stack(children: [
            PageView(
                onPageChanged: (value) {
                  _currentPage = value;
                  setState(() {});
                },
                controller: pageController,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  pageCode(
                      img: Asseturl.onboarding1,
                      text1: "Find Cheaper Flights Instantly",
                      text2:
                          "Compare prices from all flight booking services in one place. Book the best deal effortlessly!"),
                  pageCode(
                      img: Asseturl.onboarding2,
                      text1: "Let AI Plan Your Dream Trip",
                      text2:
                          "Let our smart AI create personalized itineraries based on your preferences. From destinations to activities, plan your ideal trip in minutes without the hassle."),
                  pageCode(
                      img: Asseturl.onboarding3,
                      text1: "Discover Exciting Holiday Packages",
                      text2:
                          "Book personalized holiday packages tailored to your travel style."),
                ]),
            Positioned(
                bottom: 50,
                left: 25,
                child: SmoothPageIndicator(
                  controller: pageController,
                  count: 3,
                  effect: ExpandingDotsEffect(
                    dotColor: Colors.white,
                    activeDotColor: Colors.blue,
                    dotHeight: 5.h,
                  ),
                )),
            Positioned(
                bottom: 50,
                right: 25,
                child: IconButton.filled(
                    iconSize: 35.r,
                    style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(Colors.white)),
                    onPressed: () {
                      _nextPage();
                    },
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey,
                    ))),
            Positioned(
                top: 13.h,
                right: 24.w,
                child: TextButton(
                    onPressed: () {
                      GoRouter.of(context).goNamed(Routes.onboard2.name);
                    },
                    child: Text(
                      "skip>",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.sp,
                          fontFamily: Typo.manrope_Regular),
                    )))
          ]),
        )
      ],
    ));
  }

  Container pageCode({img, text1, text2}) {
    return Container(
      padding: EdgeInsets.only(left: 24),
      width: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(fit: BoxFit.cover, image: AssetImage(img))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 587.h,
          ),
          Text(
            text1,
            style: TextStyle(
              fontSize: 28.sp,
              color: Colors.white,
              fontFamily: Typo.manrope_Regular,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 19.h,
          ),
          SizedBox(
            width: 300.w,
            child: Text(
              maxLines: 3,
              text2,
              style: TextStyle(
                fontSize: 16.sp,
                color: Colors.white,
                fontFamily: Typo.manrope_Regular,
              ),
            ),
          )
        ],
      ),
    );
  }
}
