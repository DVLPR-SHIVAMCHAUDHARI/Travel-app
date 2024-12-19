import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gif/gif.dart';
import 'package:travel/consts/asseturl.dart';
import 'package:travel/consts/colorpallate.dart';
import 'package:travel/consts/typography.dart';
import 'package:travel/main.dart';
import 'package:velocity_x/velocity_x.dart';

class Category {
  String? icon;
  String? title;

  Category({this.title, this.icon});
}

class Specialofferclass {
  String? image;
  String? icon;
  String? title;
  String? text1;
  String? text2;
  String? text3;
  String? text4;

  Specialofferclass(
      {this.icon,
      this.image,
      this.text1,
      this.text2,
      this.text3,
      this.text4,
      this.title});
}

List<Specialofferclass> offerOfferList = [
  Specialofferclass(
    icon: Asseturl.flight2,
    image: Asseturl.offerimage1,
    title: "New User Offer",
    text2: "Sign up & enjoy a discount on your first flight booking with us!",
    text3: "ACEFIRST",
    text4: "30th Nov, 2024",
    text1: "Flights",
  ),
  Specialofferclass(
    icon: Asseturl.icholiday,
    image: Asseturl.offerimage2,
    title: "New User Offer",
    text2: "Sign up & enjoy a discount on your first flight booking with us!",
    text3: "ACEFIRST",
    text4: "30th Nov, 2024",
    text1: "Holidays",
  )
];

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

List<Category> Catagorylist2 = [
  Category(
    icon: Asseturl.rentalcar,
    title: "Rental Cars & Bikes",
  ),
  Category(
    icon: Asseturl.train,
    title: "Trains & Buses",
  ),
  Category(
    icon: Asseturl.discount,
    title: "Special Discount",
  ),
];

List<Category> Categorygrid = [
  Category(icon: Asseturl.igparis, title: "Paris"),
  Category(icon: Asseturl.igbali, title: "Bali"),
  Category(icon: Asseturl.igjapan, title: "Japan"),
  Category(icon: Asseturl.igiceland, title: "Iceland"),
];

List<Category> bannerlist = [
  Category(icon: Asseturl.igbanner1),
  Category(icon: Asseturl.igbanner2),
  Category(icon: Asseturl.igbanner3),
];

List<Category> placeCategories = [
  Category(icon: Asseturl.igbeach, title: "Beach"),
  Category(icon: Asseturl.igMountain, title: "Mountains"),
];
List<Category> Mostvisitedcategories = [
  Category(icon: Asseturl.igjapan2, title: "Japan"),
  Category(icon: Asseturl.igmaldives, title: "Maldives"),
];

List<Category> specialoffers = [
  Category(title: "Top Offers"),
  Category(title: "Flights"),
  Category(title: "Hotels"),
  Category(title: "Buses"),
];

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int selectedSpecialofferindex = 0;
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
                  enabledBorder:
                      OutlineInputBorder(borderSide: BorderSide.none),
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                              SizedBox(
                                  height: 41.h,
                                  width: 41.w,
                                  child: SvgPicture.asset(
                                      Categorylist[index].icon!)),
                              Text(
                                Categorylist[index].title!,
                                style: TextStyle(
                                    fontFamily: Typo.manrope_Regular,
                                    fontSize: 12.sp),
                              )
                            ],
                          ),
                        )),
              ),
              SizedBox(
                height: 27.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(
                  Catagorylist2.length,
                  (index) => Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: Color(0xfff2f3f5),
                        radius: 28.r,
                        child: SvgPicture.asset(
                          Catagorylist2[index].icon!,
                          fit: BoxFit.cover,
                          height: 24.h,
                        ),
                      ),
                      SizedBox(
                        height: 6.h,
                      ),
                      Text(
                        Catagorylist2[index].title!,
                        style: TextStyle(
                            fontFamily: Typo.manrope_Regular, fontSize: 12.sp),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 25.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 42.h,
                    width: 165.w,
                    child: FilledButton(
                        style: ButtonStyle(
                            backgroundColor:
                                WidgetStatePropertyAll(Colors.white),
                            shape: WidgetStatePropertyAll(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25.r),
                                    side: BorderSide(color: Colors.blue)))),
                        onPressed: () {},
                        child: Row(
                          children: [
                            SvgPicture.asset(Asseturl.thingstodo),
                            SizedBox(
                              width: 5.w,
                            ),
                            Text(
                              "Things to do",
                              style: TextStyle(
                                color: Colors.blue,
                                fontFamily: Typo.manrope_Regular,
                                fontSize: 16.sp,
                              ),
                            )
                          ],
                        )),
                  ),
                  SizedBox(
                    height: 42.h,
                    width: 165.w,
                    child: FilledButton(
                        style: ButtonStyle(
                            backgroundColor:
                                WidgetStatePropertyAll(Colors.white),
                            shape: WidgetStatePropertyAll(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25.r),
                                    side: BorderSide(color: Colors.blue)))),
                        onPressed: () {},
                        child: Row(
                          children: [
                            SvgPicture.asset(Asseturl.restaurants),
                            SizedBox(
                              width: 5.w,
                            ),
                            Text(
                              "Restaurants",
                              style: TextStyle(
                                color: Colors.blue,
                                fontFamily: Typo.manrope_Regular,
                                fontSize: 16.sp,
                              ),
                            )
                          ],
                        )),
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                ],
              ),
              SizedBox(
                height: 25.h,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Color(0xff686F81),
                    borderRadius: BorderRadius.circular(5.r)),
                height: 144.h,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 144.h,
                      width: 184.w,
                      child: Image.asset(
                        Asseturl.gifTravel,
                        scale: 4,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 12, bottom: 23, right: 18),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                "AI Trip Planner",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: Typo.manrope_Semibold,
                                    fontSize: 13.sp),
                              ),
                              SvgPicture.asset(
                                Asseturl.icAiplanner,
                                color: Colors.white,
                                height: 13.h,
                              )
                            ],
                          ),
                          SizedBox(
                            width: 116.w,
                            height: 24.h,
                            child: FilledButton(
                              onPressed: () {},
                              child: Text(
                                "Start Planning",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 10.sp,
                                    fontFamily: Typo.manrope_Regular,
                                    fontWeight: FontWeight.bold),
                              ),
                              style: ButtonStyle(
                                  shape: WidgetStatePropertyAll(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5.r))),
                                  backgroundColor:
                                      WidgetStatePropertyAll(Colors.white)),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 25.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Top Destinations",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16.sp),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "See all",
                        style: TextStyle(fontSize: 14.sp, color: Colors.blue),
                      ))
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              GridView(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 165.w / 119.h,
                    crossAxisCount: 2,
                    mainAxisSpacing: 15,
                    crossAxisSpacing: 15),
                children: List.generate(
                  Categorygrid.length,
                  (index) => Container(
                    padding: EdgeInsets.only(right: 5.16, bottom: 3),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.r),
                        image: DecorationImage(
                            image: AssetImage(Categorygrid[index].icon!),
                            fit: BoxFit.cover)),
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        Categorygrid[index].title!,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 16.sp),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 25.h,
              ),
              SizedBox(
                width: double.infinity,
                height: 144.h,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: List.generate(
                    bannerlist.length,
                    (index) => Container(
                      width: 345.h,
                      height: 144.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.r)),
                      child: Image.asset(
                        bannerlist[index].icon!,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 25.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Journey together",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16.sp),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "See all",
                        style: TextStyle(fontSize: 14.sp, color: Colors.blue),
                      ))
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                width: 345.w,
                height: 228.h,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5.r)),
                child: Column(
                  children: [
                    SizedBox(
                        width: 345.w,
                        height: 145.h,
                        child: Image.asset(
                          Asseturl.igmountbromo,
                          fit: BoxFit.cover,
                        )),
                    SizedBox(
                      height: 6.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Mount Bromo",
                              style: TextStyle(
                                  // fontFamily: Typo.inter_Regular,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14.sp),
                            ),
                            Text(
                              "Volcano in East Java",
                              style: TextStyle(
                                  color: Color(0xff6C757D),
                                  fontFamily: Typo.inter_Regular,
                                  fontSize: 9.sp),
                            ),
                            SizedBox(
                              height: 4.h,
                            ),
                            Row(
                              children: [
                                VxRating(
                                  normalColor: Colors.yellow,
                                  size: 15,
                                  count: 1,
                                  isSelectable: false,
                                  onRatingUpdate: (value) {},
                                ),
                                Text(
                                  "4.9",
                                  style: TextStyle(
                                      fontSize: 12.sp,
                                      color: Colors.grey,
                                      fontFamily: Typo.inter_Regular),
                                )
                              ],
                            )
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      "Start from",
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 10.sp,
                                          fontFamily: Typo.inter_Regular),
                                    ),
                                    Text(
                                      "Rs.56,150/per",
                                      style: TextStyle(
                                          fontSize: 12.sp,
                                          color: Colors.black,
                                          fontFamily: Typo.inter_Regular),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  width: 8.w,
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 11, vertical: 3),
                                  width: 56.w,
                                  height: 24.h,
                                  decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius:
                                          BorderRadius.circular(16.r)),
                                  child: Text(
                                    "3D2N",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12.sp,
                                        fontFamily: Typo.inter_Regular),
                                  ),
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 25.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Categories",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16.sp),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "See all",
                        style: TextStyle(fontSize: 14.sp, color: Colors.blue),
                      ))
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              SizedBox(
                width: double.infinity,
                height: 238.h,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: List.generate(
                    placeCategories.length,
                    (index) => Container(
                      margin: EdgeInsets.only(right: 23),
                      width: 161,
                      decoration: BoxDecoration(

                          // borderRadius: BorderRadius.circular(16.r),
                          ),
                      child: Stack(children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(16.r),
                          child: Image.asset(
                            placeCategories[index].icon!,
                            height: 238.h,
                            width: 161.h,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          child: Container(
                              padding: EdgeInsets.only(bottom: 6.h, left: 8.w),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(16.r),
                                    bottomRight: Radius.circular(16.r)),
                                color: Colors.black.withOpacity(0.1),
                              ),
                              width: 159.w,
                              height: 37.h,
                              child: Align(
                                alignment: Alignment.bottomLeft,
                                child: Text(
                                  placeCategories[index].title!,
                                  style: TextStyle(color: Colors.white),
                                ),
                              )),
                        ),
                      ]),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 25.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Most Visited Places",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16.sp),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "See all",
                        style: TextStyle(fontSize: 14.sp, color: Colors.blue),
                      ))
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              SizedBox(
                width: double.infinity,
                height: 238.h,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: List.generate(
                    Mostvisitedcategories.length,
                    (index) => Container(
                      margin: EdgeInsets.only(right: 23),
                      width: 161,
                      decoration: BoxDecoration(

                          // borderRadius: BorderRadius.circular(16.r),
                          ),
                      child: Stack(children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(16.r),
                          child: Image.asset(
                            Mostvisitedcategories[index].icon!,
                            height: 238.h,
                            width: 161.h,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          child: Container(
                              padding: EdgeInsets.only(bottom: 6.h, right: 8.w),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(16.r),
                                    bottomRight: Radius.circular(16.r)),
                                color: Colors.black.withOpacity(0.1),
                              ),
                              width: 159.w,
                              height: 37.h,
                              child: Align(
                                alignment: Alignment.bottomRight,
                                child: Text(
                                  Mostvisitedcategories[index].title!,
                                  style: TextStyle(color: Colors.white),
                                ),
                              )),
                        ),
                      ]),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 25.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(
                        Asseturl.discount,
                        color: Colors.blue,
                      ),
                      SizedBox(
                        width: 2.5.w,
                      ),
                      Text(
                        "Special Offer",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16.sp),
                      ),
                    ],
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "See all",
                        style: TextStyle(fontSize: 14.sp, color: Colors.blue),
                      ))
                ],
              ),
              SizedBox(
                height: 22.h,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    specialoffers.length,
                    (index) {
                      bool isSelected = selectedSpecialofferindex == index;
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedSpecialofferindex = index;
                          });
                        },
                        child: Container(
                            width: 101.w,
                            height: 35.h,
                            margin: EdgeInsets.only(right: 10.w),
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: isSelected
                                        ? Colors.blue
                                        : Colors.grey.shade400),
                                borderRadius: BorderRadius.circular(5.r)),
                            child: Center(
                                child: Text(specialoffers[index].title!))),
                      );
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 22.h,
              ),
              SizedBox(
                height: 220.h,
                width: double.infinity,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: List.generate(
                    2,
                    (index) {
                      return Container(
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(16.r)),
                        margin: EdgeInsets.only(right: 7.w),
                        height: 220.h,
                        width: 171.w,
                        child: Stack(
                          children: [
                            SizedBox(
                                width: 171.w,
                                height: 89.h,
                                child: Image.asset(
                                  offerOfferList[index].image!,
                                  fit: BoxFit.cover,
                                )),
                            Positioned(
                              top: 100.h,
                              left: 10.w,
                              child: Text(
                                offerOfferList[index].title!,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: Typo.inter_Regular,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14.sp),
                              ),
                            ),
                            Positioned(
                              top: 119.h,
                              left: 10.w,
                              right: 6.w,
                              bottom: 67.h,
                              child: Text(
                                offerOfferList[index].text2!,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: Typo.inter_Regular,
                                    fontSize: 10.sp),
                              ),
                            ),
                            Positioned(
                              top: 78.h,
                              right: 11.w,
                              child: Container(
                                padding: EdgeInsets.only(
                                    bottom: 3.h,
                                    top: 4.h,
                                    left: 5.w,
                                    right: 8.w),
                                // width: 63.w,
                                height: 18.h,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(50.r)),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CircleAvatar(
                                        radius: 5.5.r,
                                        backgroundColor: Colors.blue,
                                        child: SvgPicture.asset(
                                          offerOfferList[index].icon!,
                                          fit: BoxFit.cover,
                                          height: 11.h,
                                          width: 11.w,
                                        )),
                                    SizedBox(
                                      width: 8.w,
                                    ),
                                    Text(
                                      offerOfferList[index].text1!,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: Typo.inter_Regular,
                                          fontSize: 10.sp),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              top: 161.h,
                              bottom: 34.h,
                              left: 10.w,
                              right: 13.w,
                              child: Container(
                                color: Color(0xffEDF5FA),
                                width: 148.w,
                                height: 25.h,
                                child: DottedBorder(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 5.h, horizontal: 8.w),
                                    radius: Radius.circular(5.r),
                                    borderType: BorderType.RRect,
                                    color: Colors.blue,
                                    child: Row(
                                      children: [
                                        Text(
                                          "Use Code:",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontFamily: Typo.inter_Regular,
                                              fontSize: 10.sp),
                                        ),
                                        SizedBox(
                                          width: 12.w,
                                        ),
                                        Text(
                                          offerOfferList[index].text3!,
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontFamily: Typo.inter_Regular,
                                              fontSize: 10.sp),
                                        )
                                      ],
                                    )),
                              ),
                            ),
                            Positioned(
                              top: 196.h,
                              left: 10.w,
                              child: Row(
                                children: [
                                  Text(
                                    "Valid till: ",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: Typo.inter_Regular,
                                        fontSize: 10.sp),
                                  ),
                                  Text(
                                    offerOfferList[index].text4!,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: Typo.inter_Regular,
                                        fontSize: 10.sp),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 100,
              )
            ],
          ),
        ),
      ),
    );
  }
}
