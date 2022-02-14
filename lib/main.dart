import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:ressource_relat/feature/landing_page/landing_page.dart';
import 'package:ressource_relat/foundation/theme/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Ressource Relationelle",
      theme: ThemeData(
        textTheme: TextTheme(
          headline6: TextStyle(
              fontSize: 14.5, letterSpacing: 0.15, color: AppColor.blackColor),
          bodyText1: TextStyle(
            color: AppColor.bodyColor1,
            fontSize: 14,
          ),
          caption: TextStyle(
            fontSize: 11,
            color: AppColor.captionColor,
          ),
        ),
      ),
      home: LandingPage(),
    );
  }
}
