import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yoe_yoe_lay/modules/auth/api/auth_api.dart';
import 'package:yoe_yoe_lay/global/common/base_client.dart';

class LoginController extends GetxController {
  TextEditingController loginController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void login() async {
    try {
      Map<String,dynamic> body = {
        "login": loginController.text.trim(),
        "password": passwordController.text.trim()
      };
      var response = await BaseClient()
          .post(AuthAPI().loginAPI, body)
          .catchError((error) => print(error));
      if (response == null) return;
      print(response);
      debugPrint("Successful");
    } catch (error) {
      Get.defaultDialog(
        title: "Wrong Password",
        middleText: error.toString(),
        onConfirm: () {
          Get.back(); // Close the dialog
        },
      );
    }
  }
}
