import 'package:shared_preferences/shared_preferences.dart';

class Session {
  Future<void> saveSession(Map<String, dynamic> data) async {
    print(data);
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('partnerId', data['partner_id']['id']);
    await prefs.setInt('uid', data['uid']);
    await prefs.setString('sessionId', data['session_id']);
    await prefs.setString('login', data['login']);
  }

  Future<Map<String, dynamic>> getSession() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final Map<String, dynamic> data = {
      "partnerId": await prefs.getInt('partnerId'),
      "uid": await prefs.getInt('uid'),
      "sessionId": await prefs.getString('sessionId'),
    };
    return data;
  }

  Future<void> removeSession() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('partnerId');
    await prefs.remove('uid');
    await prefs.remove('sessionId');
  }
}
