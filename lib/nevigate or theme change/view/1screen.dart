import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenFirst extends StatelessWidget {
  const ScreenFirst({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Page'),
        centerTitle: true,
      ),
      body: Center(
        child: IconButton(onPressed: () {
          Get.toNamed('/second');
        }, icon: FlutterLogo(size: 80,)),
      ),
    );
  }
}
