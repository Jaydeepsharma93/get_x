import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/nevigate%20or%20theme%20change/controller/themechange.dart';
import 'package:get_x/nevigate%20or%20theme%20change/view/1screen.dart';
import 'package:get_x/nevigate%20or%20theme%20change/view/2screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final ThemeChange themeChange = Get.put(ThemeChange());

  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return GetMaterialApp(
        theme: themeChange.isDark.value ? ThemeData.dark() : ThemeData.light(),
        debugShowCheckedModeBanner: false,
        home: ScreenFirst(),
        getPages: [
          GetPage(
              name: '/home',
              page: () => ScreenFirst(),
              transition: Transition.fadeIn),
          GetPage(
              name: '/second',
              page: () => ScreenSec(),
              transition: Transition.fadeIn)
        ],
      );
    });
  }
}
