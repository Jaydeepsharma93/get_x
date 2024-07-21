import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../nevigate or theme change/controller/themechange.dart';
import '../controller/getapi.dart';

class Display extends StatelessWidget {
  final ThemeChange themeChange = Get.find();
  final ApiCalling apiCalling = Get.find();

  Display({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recipes'),
        centerTitle: true,
        actions: [
          Obx(
            () => Switch(
              value: themeChange.isDark.value,
              onChanged: (value) {
                themeChange.changeTheme(value);
              },
            ),
          )
        ],
      ),
      body: Obx(
        () => (apiCalling.isLoading.value)
            ? Center(child: CircularProgressIndicator())
            : ListView.builder(
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: ListTile(
                    leading: CircleAvatar(
                      maxRadius: 28,
                      backgroundImage: NetworkImage(
                          apiCalling.recipes!.recipe![index].image.toString()),
                    ),
                    title: Text(
                        apiCalling.recipes!.recipe![index].name.toString()),
                    trailing:
                        Text("${apiCalling.recipes!.recipe![index].rating}"),
                  ),
                ),
                itemCount: apiCalling.recipes!.recipe!.length,
              ),
      ),
    );
  }
}
