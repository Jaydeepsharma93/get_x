import 'package:get/get.dart';

class ValidationController extends GetxController {
  var email = "".obs;
  var password = "".obs;

  String? checkEmail(String email) {
    if (email.isEmpty) {
      return 'Email cannot be empty';
    }
    if (!email.contains('@gmail.com')) {
      return 'Email must contain @gmail.com';
    }
    return null;
  }

  String? checkPassword(String password) {
    if (password.isEmpty) {
      return 'Password cannot be empty';
    }
    if (password.length < 8) {
      return 'Password must be at least 8 characters long';
    }
    return null;
  }

  void login() {
    if (checkEmail(email.value) == null &&
        checkPassword(password.value) == null) {
      Get.snackbar('Success', 'Login successful');
    } else {
      Get.snackbar('Error', 'Invalid email or password');
    }
  }
}
