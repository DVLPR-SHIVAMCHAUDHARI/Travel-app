import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gif/gif.dart';
import 'package:go_router/go_router.dart';
import 'package:travel/consts/asseturl.dart';
import 'package:travel/main.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen>
    with TickerProviderStateMixin {
  late GifController _gifController;

  changescreen() {
    Future.delayed(Duration(milliseconds: 5000), () {
      GoRouter.of(context).goNamed(Routes.onboarding.name);
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    _gifController = GifController(vsync: this);
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _gifController.repeat(
        max: 1,
        min: 0,
        period: Duration(seconds: 5),
      );
    });
    changescreen();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _gifController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: double.infinity,
        child: Column(
          children: [
            SizedBox(
              height: 192.h,
            ),
            Stack(
              clipBehavior: Clip.none,
              children: [
                SvgPicture.asset(Asseturl.applogo),
                Positioned(
                    left: 45, bottom: 40, child: Image.asset(Asseturl.logo2))
              ],
            ),
            SizedBox(
              height: 80.h,
            ),
            Gif(
              fit: BoxFit.cover,
              width: 345.w,
              height: 337.h,
              image: AssetImage(Asseturl.map),
              controller: _gifController,
            )
          ],
        ),
      ),
    );
  }
}
