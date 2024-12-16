import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:travel/views/onboarding2.dart';
import 'package:travel/views/onboardingscreen.dart';
import 'package:travel/views/splashscreen.dart';

enum Routes { splash, landing, onboarding, onboard2 }

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
  )
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
