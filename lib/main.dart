import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yoe_yoe_lay/modules/auth/screens/login_screen.dart';
import 'package:yoe_yoe_lay/modules/base/screens/home_screen.dart';

void main() {
  runApp(GetMaterialApp(
    initialRoute: '/login',
    getPages: [
      GetPage(name: '/home', page: () => const HomeScreen()),
      GetPage(name: '/login', page: () => LoginScreen()),
    ],
  ));
}
