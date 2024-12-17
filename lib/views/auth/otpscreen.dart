import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:pinput/pinput.dart';
import 'package:travel/consts/asseturl.dart';
import 'package:travel/consts/typography.dart';
import 'package:travel/main.dart';

class Otpscreen extends StatelessWidget {
  const Otpscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff8f9fa),
      body: Container(
        padding: EdgeInsets.only(left: 24, right: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 80.h,
            ),
            IconButton(
                style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.white),
                    shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                        side: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(8.r)))),
                onPressed: () {
                  GoRouter.of(context).pop();
                },
                icon: Icon(
                  Icons.arrow_back_ios_new,
                  color: Colors.grey,
                )),
            SizedBox(
              height: 18.h,
            ),
            Text("OTP Verification",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontFamily: Typo.manrope_Regular,
                    fontSize: 28.sp)),
            SizedBox(
              height: 18.h,
            ),
            Text(
                "Enter the verification code we just sent on your email address.",
                style: TextStyle(
                    color: Colors.grey.shade700,
                    fontFamily: Typo.manrope_Regular,
                    fontSize: 16.sp)),
            SizedBox(
              height: 18.h,
            ),
            Pinput(
              autofocus: true,
              length: 4,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              keyboardType: TextInputType.number,
              defaultPinTheme: PinTheme(
                margin: EdgeInsets.only(right: 20),
                width: 60.w,
                height: 60.r,
                decoration: BoxDecoration(
                    color: Color(0xffF7F8F9),
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(8.r)),
              ),
              focusedPinTheme: PinTheme(
                textStyle:
                    TextStyle(fontSize: 22.sp, fontWeight: FontWeight.w400),
                margin: EdgeInsets.only(right: 20),
                width: 60.w,
                height: 60.r,
                decoration: BoxDecoration(
                    color: Color(0xffF7F8F9),
                    border: Border.all(color: Colors.green),
                    borderRadius: BorderRadius.circular(8.r)),
              ),
              submittedPinTheme: PinTheme(
                textStyle:
                    TextStyle(fontSize: 22.sp, fontWeight: FontWeight.w400),
                margin: EdgeInsets.only(right: 20),
                width: 60.w,
                height: 60.r,
                decoration: BoxDecoration(
                    color: Color(0xffF7F8F9),
                    border: Border.all(color: Colors.green),
                    borderRadius: BorderRadius.circular(8.r)),
              ),
            ),
            SizedBox(
              height: 18.h,
            ),
            Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                    onPressed: () {},
                    child: Text("Resend OTP",
                        style: TextStyle(
                            color: Colors.grey.shade700,
                            fontFamily: Typo.manrope_Regular,
                            fontSize: 14.sp)))),
            SizedBox(
              width: double.infinity,
              height: 50.h,
              child: FilledButton(
                  style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Colors.blue),
                      shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.r)))),
                  onPressed: () {
                    GoRouter.of(context).goNamed(Routes.home.name);
                  },
                  child: Text(
                    "Submit",
                    style: TextStyle(
                        fontFamily: Typo.manrope_Regular, fontSize: 16.sp),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
