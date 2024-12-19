import 'dart:ffi';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travel/consts/asseturl.dart';
import 'package:travel/consts/typography.dart';

class Category1 {
  String? title;
  String? icon;

  Category1({this.title, this.icon});
}

List<Category1> exploreList1 = [
  Category1(title: "Hotels", icon: Asseturl.hotel),
  Category1(title: "Things to do", icon: Asseturl.thingstodo2),
  Category1(title: "Food", icon: Asseturl.icfood),
];

int selectedindex1 = -1;

class Explorescreen extends StatefulWidget {
  Explorescreen({super.key});

  @override
  State<Explorescreen> createState() => _ExplorescreenState();
}

class _ExplorescreenState extends State<Explorescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF8F9FA),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          children: [
            SizedBox(
              height: 56.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Explore"),
                CircleAvatar(
                  backgroundColor: Color(0xfff2f3f5),
                  radius: 20.r,
                  child: Icon(
                    Icons.person,
                    color: Colors.blue,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 8.h,
            ),
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                enabledBorder: OutlineInputBorder(borderSide: BorderSide.none),
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
              height: 23.h,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: List.generate(
                  exploreList1.length,
                  (index) {
                    bool isSelected = selectedindex1 == index;
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedindex1 = index;
                        });
                      },
                      child: Container(
                          padding: EdgeInsets.only(left: 10.w, right: 10.w),
                          // width: 101.w,
                          height: 35.h,
                          margin: EdgeInsets.only(right: 10.w),
                          decoration: BoxDecoration(
                              color: Color(0xffF2F3F5),
                              borderRadius: BorderRadius.circular(37.r)),
                          child: Center(
                              child: Row(
                            children: [
                              Text(
                                exploreList1[index].title!,
                                style: TextStyle(
                                    color: isSelected
                                        ? Colors.blue
                                        : Color(0xff2F4858)),
                              ),
                              SizedBox(
                                width: 8.w,
                              ),
                              SvgPicture.asset(
                                exploreList1[index].icon!,
                                color: isSelected
                                    ? Colors.blue
                                    : Color(0xff2F4858),
                              )
                            ],
                          ))),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
