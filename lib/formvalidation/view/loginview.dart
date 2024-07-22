import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../../nevigate or theme change/controller/themechange.dart';
import '../controller/validationcontroller.dart';

class LoginView extends StatelessWidget {
  final ThemeChange themeChange = Get.find();
  final ValidationController validationController = Get.find();

  LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => TextField(
              textInputAction: TextInputAction.next,
                  onChanged: (value) =>
                      validationController.email.value = value,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    errorText: validationController
                        .checkEmail(validationController.email.value),
                  ),
                )),
            SizedBox(height: 16),
            Obx(() => TextField(
                  onChanged: (value) =>
                      validationController.password.value = value,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    errorText: validationController
                        .checkPassword(validationController.password.value),
                  ),
                  obscureText: true,
                )),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: validationController.login,
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
