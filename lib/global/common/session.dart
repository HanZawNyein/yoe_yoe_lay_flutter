import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Session extends GetxController {

  Future<void> saveSession(Map<String, dynamic> data) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('partnerId', data['partner_id']['id']);
    await prefs.setInt('uid', data['uid']);
    await prefs.setString('sessionId', data['session_id']);
    await prefs.setString('login', data['login']);
  }

  Future<Map<String, dynamic>> getSession() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    // print("object");
    final Map<String, dynamic> data = {
      "partnerId": prefs.getInt('partnerId'),
      "uid": prefs.getInt('uid'),
      "sessionId": prefs.getString('sessionId'),
    };
    // print("data get sesion");
    // print(data);
    // sessionData.value = data; // Update the sessionData observable
    return data;
  }

  Future<void> removeSession() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('partnerId');
    await prefs.remove('uid');
    await prefs.remove('sessionId');
  }
}
