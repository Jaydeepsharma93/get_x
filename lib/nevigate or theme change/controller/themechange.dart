import 'package:get/get.dart';

class ThemeChange extends GetxController{
  var isDark = false.obs;
  void changeTheme(bool value){
    isDark.value = value;
  }
}