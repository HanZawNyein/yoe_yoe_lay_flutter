import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import 'package:yoe_yoe_lay/global/api/base_api.dart';
import 'package:yoe_yoe_lay/global/common/session.dart';

class BaseClient {
  var client = http.Client();

  Future<dynamic> get(String api) async {
    var url = Uri.parse(BaseAPI.baseURL + api);
    Map<String, String> headers = {};
    var cookie = await Session().getSession();
    // print("get request");
    // print(cookie);
    // print(api);
    if (cookie['sessionId'] != null){
      headers['Cookie'] = cookie['sessionId'];
    };
    var response = await client.get(url, headers: headers);
    if (response.statusCode == 200) {
      var result = json.decode(response.body);
      if (result['isFullFilled'] as bool) {
        // var cookie = response.headers['set-cookie'];
        // if (cookie != null) {
        //   var temp = result['data'];
        //   temp['session_id'] = cookie;
        //   Session().saveSession(temp);
        // }
        return result['data'];
      }
    } else {
      //   throw error
    }
  }

  Future<dynamic> post(String api, Map<String, dynamic> data) async {
    var url = Uri.parse('${BaseAPI.baseURL}$api');
    Map<String, String> headers = {};
    var cookie = await Session().getSession();
    // print(cookie);
    if (cookie['sessionId'] != null) headers['Cookie'] = cookie['sessionId'];
    var request = http.MultipartRequest('POST', url);
    // Convert data to Map<String, String> if needed
    Map<String, String> formData = {};
    data.forEach((key, value) {
      formData[key] = value.toString();
    });
    request.fields.addAll(formData);
    request.headers.addAll(headers);
    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      var result = json.decode(await response.stream.bytesToString());
      if (result['isFullFilled'] as bool) {
        var cookie = response.headers['set-cookie'];
        if (cookie != null) {
          result['data']['session_id']=cookie;
        }
        return result['data'];
      }
    } else {
      //throw error
      Get.defaultDialog(
        title: "ERROR",
        middleText: response.reasonPhrase.toString(),
        onConfirm: () {
          Get.back(); // Close the dialog
        },
      );
    }
  }
}
