import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yoe_yoe_lay/modules/auth/models/login_model.dart';
import 'package:yoe_yoe_lay/modules/auth/services/auth_services.dart';

class LoginController extends GetxController {
  TextEditingController loginController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void login() async {
    Map<String, dynamic> body = {
      "login": loginController.text.trim(),
      "password": passwordController.text.trim()
    };
    LoginModel loginModel = await LoginService().postLogin(body);
    if (loginModel != null) {}
    // Get.toNamed('/home'); // Navigate to '/details' route
    Get.offAllNamed('/home'); // Navigate to '/details' route
  }
}
