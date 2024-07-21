import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/Quizapp/controller/quizacheck.dart';
import 'package:get_x/Quizapp/view/Quizapp.dart';
import 'package:get_x/apicall/controller/getapi.dart';
import 'package:get_x/apicall/view/display.dart';
import 'package:get_x/nevigate%20or%20theme%20change/controller/themechange.dart';
import 'package:get_x/nevigate%20or%20theme%20change/view/1screen.dart';
import 'package:get_x/nevigate%20or%20theme%20change/view/2screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final ThemeChange themeChange = Get.put(ThemeChange());
  final ApiCalling apiCalling = Get.put(ApiCalling());
  final QuizCheck quizCheck = Get.put(QuizCheck());

  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return GetMaterialApp(
        theme: themeChange.isDark.value ? ThemeData.dark() : ThemeData.light(),
        debugShowCheckedModeBanner: false,
        home: QuizApp(),
        getPages: [
          GetPage(
              name: '/home',
              page: () => ScreenFirst(),
              transition: Transition.cupertino),
          GetPage(
              name: '/second',
              page: () => const ScreenSec(),
              transition: Transition.cupertino),
          GetPage(
            name: '/Display',
            page: () => Display(),
          ),
          GetPage(
            name: '/QuizApp',
            page: () => QuizApp(),
          )
        ],
      );
    });
  }
}
