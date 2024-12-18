import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:travel/consts/typography.dart';
import 'package:travel/main.dart';

class Onboarding2 extends StatefulWidget {
  Onboarding2({super.key});

  @override
  State<Onboarding2> createState() => _Onboarding2State();
}

class _Onboarding2State extends State<Onboarding2> {
  List languages = [
    'English',
    'Hindi',
    'Arabic',
    'Telugu',
    'Malayalam',
    'Chinese',
    'Japanese'
  ];

  int selectedindex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 75.h),
            Text(
              "Choose Language",
              style: TextStyle(
                  fontFamily: Typo.manrope_Regular,
                  fontWeight: FontWeight.w600,
                  fontSize: 16.sp),
            ),
            SizedBox(
              height: 45.h,
            ),
            Wrap(
              spacing: 20,
              runSpacing: 30,
              children: List.generate(
                languages.length,
                (index) => GestureDetector(
                  onTap: () {
                    selectedindex = index;
                    setState(() {
                      Future.delayed(Duration(microseconds: 20), () {
                        GoRouter.of(context).goNamed(Routes.login.name);
                      });
                    });
                  },
                  child: Container(
                    padding:
                        EdgeInsets.only(top: 3, bottom: 3, right: 10, left: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6.r),
                        border: Border.all(
                            color: index == selectedindex
                                ? Colors.blue
                                : Colors.grey)),
                    child: Text(
                      languages[index],
                      style: TextStyle(
                          fontFamily: Typo.manrope_Regular,
                          fontSize: 14,
                          color: index == selectedindex
                              ? Colors.blue
                              : Colors.grey),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
