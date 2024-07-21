// class ApiCalling extends GetxController {
//   Recipes? recipes;
//   var dataList = {}.obs;
//   var isLoading = false.obs;
//
//   Future<void> fetchData() async {
//     isLoading.value = true;
//
//     String? jsonData = await ApiService.apiService.getData();
//     if (jsonData != null) {
//       dataList = jsonDecode(jsonData);
//       recipes = Recipes.fromJson(dataList);
//     }
//
//     isLoading.value = true;
//   }
// }

import 'dart:convert';

import 'package:get/get.dart';
import 'package:get_x/apicall/controller/apiService.dart';
import 'package:get_x/apicall/model/modelclass.dart';

class ApiCalling extends GetxController {
  var isLoading = false.obs;
  var jsonData = {}.obs;
  Recipes? recipes;

  @override
  void onInit() {
    super.onInit();
    fetchData();
  }

  Future<void> fetchData() async {
    isLoading(true);

    jsonData.value = (await ApiService.apiService.getData())!;
    recipes = Recipes.fromJson(jsonData);

    isLoading(false);
  }
}
