import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travel/consts/asseturl.dart';
import 'package:travel/consts/typography.dart';
import 'package:travel/main.dart';

class Category {
  String? icon;
  String? title;

  Category({this.title, this.icon});
}

List<Category> Categorylist = [
  Category(
    icon: Asseturl.flight,
    title: "Flights",
  ),
  Category(
    icon: Asseturl.hotels,
    title: "Hotels",
  ),
  Category(
    icon: Asseturl.package,
    title: "Packages",
  )
];

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff9f9f9),
      body: Container(
        padding: EdgeInsets.only(left: 24, right: 24),
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 48.h,
              ),
              Row(
                children: [
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: "Hello,",
                        style: TextStyle(color: Colors.black, fontSize: 14.sp)),
                    TextSpan(
                        text: "Satya!",
                        style: TextStyle(color: Colors.black, fontSize: 18.sp))
                  ])),
                  SizedBox(
                    width: 145.w,
                  ),
                  CircleAvatar(
                    radius: 10.r,
                    child: SvgPicture.asset(
                      Asseturl.flag,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text(
                    "INR",
                    style: TextStyle(
                        fontFamily: Typo.manrope_Semibold,
                        fontSize: 16.sp,
                        color: Colors.grey.shade700),
                  ),
                  SizedBox(
                    width: 27.w,
                  ),
                  CircleAvatar(
                    backgroundColor: Color(0xffF2F3F5),
                    radius: 18.r,
                    child: Icon(
                      Icons.person,
                      color: Colors.blue,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 13.h,
              ),
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white)),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white)),
                  suffixIcon: Icon(
                    Icons.search,
                    color: Colors.grey,
                    size: 20.h,
                  ),
                  hintText: "Search here..",
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontFamily: Typo.manrope_Regular,
                  ),
                ),
              ),
              SizedBox(
                height: 22.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                    Categorylist.length,
                    (index) => Container(
                          decoration: BoxDecoration(
                              color: Color(0xffF2F3F5),
                              borderRadius: BorderRadius.circular(4.r)),
                          padding: EdgeInsets.symmetric(vertical: 5.5.h),
                          margin: EdgeInsets.only(right: 10),
                          width: 103.w,
                          height: 73.h,
                          child: Column(
                            children: [
                              SvgPicture.asset(Categorylist[index].icon!),
                              Text(
                                Categorylist[index].title!,
                                style: TextStyle(
                                    fontFamily: Typo.manrope_Regular,
                                    fontSize: 12.sp),
                              )
                            ],
                          ),
                        )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
