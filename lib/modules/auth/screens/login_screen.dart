import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yoe_yoe_lay/modules/auth/controllers/auth_controller.dart';

class LoginScreen extends StatelessWidget {
  final LoginController loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              FlutterLogo(),
              TextFormField(
                controller: loginController.loginController,
                decoration: InputDecoration(labelText: "email or phone number"),
              ),
              TextFormField(
                controller: loginController.passwordController,
                decoration: InputDecoration(labelText: "password"),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: loginController.login, child: Text("login"))
            ],
          ),
        ),
      ),
    );
  }
}
