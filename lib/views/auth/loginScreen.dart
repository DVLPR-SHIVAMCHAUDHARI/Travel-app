import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:travel/consts/asseturl.dart';
import 'package:travel/consts/typography.dart';
import 'package:travel/main.dart';

class Loginscreen extends StatelessWidget {
  const Loginscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff8f9fa),
      body: Container(
        padding: EdgeInsets.only(top: 86, left: 24, right: 24),
        child: Column(
          children: [
            Align(
              alignment: Alignment.center,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  SvgPicture.asset(Asseturl.applogo),
                  Positioned(
                      left: 45, bottom: 40, child: Image.asset(Asseturl.logo2))
                ],
              ),
            ),
            SizedBox(
              height: 43.h,
            ),
            Text(
              "Welcome back! Login to Your Account..",
              style: TextStyle(
                fontFamily: Typo.manrope_Regular,
                fontSize: 28.sp,
              ),
            ),
            SizedBox(
              height: 25.h,
            ),
            TextFormField(
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              keyboardType: TextInputType.number,
              maxLength: 10,
              decoration: InputDecoration(
                counterText: "",
                prefixIcon: SizedBox(
                  width: 60.w,
                  height: 20.h,
                  child: Row(
                    children: [
                      SizedBox(
                        height: 30.h,
                        width: 30.w,
                        child: SvgPicture.asset(
                          fit: BoxFit.scaleDown,
                          Asseturl.flag,
                        ),
                      ),
                      Text(
                        "+91",
                        style: TextStyle(
                            color: Colors.grey,
                            fontFamily: Typo.manrope_Regular,
                            fontSize: 14.sp),
                      ),
                    ],
                  ),
                ),
                hintText: "Enter your mobile number..",
                hintStyle: TextStyle(
                    color: Colors.grey,
                    fontFamily: Typo.manrope_Regular,
                    fontSize: 14.sp),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.r),
                    borderSide: BorderSide(color: Colors.grey.shade400)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.r),
                    borderSide: BorderSide(color: Colors.grey.shade400)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.r),
                    borderSide: BorderSide(color: Colors.grey.shade400)),
              ),
            ),
            SizedBox(
              height: 25.h,
            ),
            SizedBox(
              width: double.infinity,
              height: 50.h,
              child: FilledButton(
                  style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Colors.blue),
                      shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.r)))),
                  onPressed: () {
                    GoRouter.of(context).goNamed(Routes.otp.name);
                  },
                  child: Text(
                    "Send OTP",
                    style: TextStyle(
                        fontFamily: Typo.manrope_Regular, fontSize: 16.sp),
                  )),
            ),
            SizedBox(
              height: 25.h,
            ),
            Text("Or Login with",
                style: TextStyle(
                    color: Colors.grey,
                    fontFamily: Typo.manrope_Regular,
                    fontSize: 14.sp)),
            SizedBox(
              height: 20.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8.r),
                          border: Border.all(color: Colors.grey.shade400)),
                      height: 56.h,
                      width: 90.w,
                      child: SvgPicture.asset(
                        Asseturl.fbicon,
                        fit: BoxFit.scaleDown,
                      )),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8.r),
                          border: Border.all(color: Colors.grey.shade400)),
                      height: 56.h,
                      width: 90.w,
                      child: SvgPicture.asset(
                        Asseturl.googleicon,
                        fit: BoxFit.scaleDown,
                      )),
                ),
                IconButton(
                  style: ButtonStyle(
                      shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                          side: BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.circular(8.r)))),
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    Asseturl.apple,
                    fit: BoxFit.scaleDown,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
