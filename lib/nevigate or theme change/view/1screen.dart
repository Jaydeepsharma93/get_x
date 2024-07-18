import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/themechange.dart';

class ScreenFirst extends StatelessWidget {
  final ThemeChange themeChange = Get.find();
   ScreenFirst({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Page'),
        centerTitle: true,
        actions: [
          Obx(
            () =>  Switch(value:themeChange.isDark.value, onChanged: (value) {
              themeChange.changeTheme(value);
            },),
          )
        ],
      ),
      body: Center(
        child: IconButton(onPressed: () {
          Get.toNamed('/second');
        }, icon: FlutterLogo(size: 80,)),
      ),
    );
  }
}
