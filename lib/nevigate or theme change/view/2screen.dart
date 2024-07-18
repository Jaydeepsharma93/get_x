import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class ScreenSec extends StatelessWidget {
  const ScreenSec({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
        centerTitle: true,
      ),
      body: Center(
        child: IconButton(onPressed: () {
          Get.back();
        }, icon: FlutterLogo(size: 150,)),
      ),
    );
  }
}
