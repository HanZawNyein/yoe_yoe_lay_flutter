import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yoe_yoe_lay/global/api/auth_api.dart';
import 'package:yoe_yoe_lay/global/common/base_client.dart';

class LoginController extends GetxController {
  TextEditingController loginController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void login() async {
    try {
      Map body = {
        "phone_number": loginController.text.trim(),
        "password": passwordController.text.trim()
      };
      var response = await PrivateBaseClient()
          .get(AuthAPI().loginAPI)
          .catchError((error) {});
      if (response == null) return;
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
