import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yoe_yoe_lay/global/common/session.dart';
import 'package:yoe_yoe_lay/modules/auth/screens/login_screen.dart';
import 'package:yoe_yoe_lay/modules/base/screens/home_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final Map<String, dynamic> session = await Session().getSession();
  runApp(GetMaterialApp(
    initialRoute: (session['sessionId'] != null) ? '/home' : '/login',
    getPages: [
      GetPage(name: '/home', page: () => HomeScreen()),
      GetPage(name: '/login', page: () => LoginScreen()),
    ],
  ));
}
