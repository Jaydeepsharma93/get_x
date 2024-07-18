import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/nevigate%20or%20theme%20change/view/1screen.dart';
import 'package:get_x/nevigate%20or%20theme%20change/view/2screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: ScreenFirst(),
      getPages: [
        GetPage(
          name: '/home',
          page: () => ScreenFirst(),
        ),
        GetPage(
          name: '/second',
          page: () => ScreenSec(),
        )
      ],
    );
  }
}
