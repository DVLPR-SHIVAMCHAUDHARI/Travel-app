import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:travel/consts/home.dart';
import 'package:travel/views/auth/loginScreen.dart';
import 'package:travel/views/auth/otpscreen.dart';
import 'package:travel/views/homeScreen.dart';
import 'package:travel/views/onboarding2.dart';
import 'package:travel/views/onboardingscreen.dart';
import 'package:travel/views/splashscreen.dart';

enum Routes { splash, landing, onboarding, onboard2, login, otp, home }

void main() {
  runApp(const Travel());
}

GoRouter router = GoRouter(routes: [
  GoRoute(
    path: "/",
    name: Routes.splash.name,
    builder: (context, state) => Splashscreen(),
  ),
  GoRoute(
    path: "/onboard",
    name: Routes.onboarding.name,
    builder: (context, state) => Onboardingscreen(),
  ),
  GoRoute(
    path: "/onboard2",
    name: Routes.onboard2.name,
    builder: (context, state) => Onboarding2(),
  ),
  GoRoute(
      path: "/login",
      name: Routes.login.name,
      builder: (context, state) => Loginscreen(),
      routes: [
        GoRoute(
          path: "otpscreen",
          name: Routes.otp.name,
          builder: (context, state) => Otpscreen(),
        )
      ]),
  GoRoute(
    path: "/home",
    name: Routes.home.name,
    builder: (context, state) => Home(),
  ),
]);

class Travel extends StatelessWidget {
  const Travel({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(393, 852),
      child: MaterialApp.router(
        routerConfig: router,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
