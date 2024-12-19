import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:travel/consts/asseturl.dart';
import 'package:travel/consts/typography.dart';
import 'package:travel/main.dart';
import 'package:travel/views/aiPlannerScreen.dart';
import 'package:travel/views/exploreScreen.dart';
import 'package:travel/views/homeScreen.dart';
import 'package:travel/views/news&blogs.dart';
import 'package:velocity_x/velocity_x.dart';

class Appbarcomponents {
  String? text;
  String? icon;

  Appbarcomponents({this.icon, this.text});
}

List<Appbarcomponents> Componentlist = [
  Appbarcomponents(icon: Asseturl.ichome, text: "Home"),
  Appbarcomponents(icon: Asseturl.icexplore, text: "Explore"),
  Appbarcomponents(icon: Asseturl.icAiplanner, text: "AI planner"),
  Appbarcomponents(icon: Asseturl.icnews, text: "News&Blogs"),
];

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedbottombarindex = 0;

  List screens = [
    Homescreen(),
    Explorescreen(),
    Aiplannerscreen(),
    Newsandblogs(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectedbottombarindex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(14.r),
                topRight: Radius.circular(14.r)),
            boxShadow: [
              BoxShadow(
                  offset: Offset(0, -2),
                  blurRadius: 4,
                  color: Colors.grey,
                  spreadRadius: 0)
            ],
            color: Colors.white),
        padding: EdgeInsets.only(top: 10.h),
        height: 75.h,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(
            screens.length,
            (index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedbottombarindex = index;
                  });
                },
                child: Column(
                  children: [
                    SvgPicture.asset(
                      Componentlist[index].icon!,
                      color: selectedbottombarindex == index
                          ? Colors.blue
                          : Color(0xff2F4858),
                    ),
                    Text(
                      Componentlist[index].text!,
                      style: TextStyle(
                          fontFamily: Typo.manrope_Regular,
                          fontSize: 12.sp,
                          color: Color(0xff2F4858)),
                    )
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
