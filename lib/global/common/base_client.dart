import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:yoe_yoe_lay/global/api/base_api.dart';

class BaseClient {
  var client = http.Client();

  Future<dynamic> get(String api) async {
    var url = Uri.parse(BaseAPI.baseURL + api);
    var headers = {
      "Cookie": "session_id=1234",
    };
    var response = await client.get(url, headers: headers);
    if (response.statusCode == 200) {
      return response.body;
    } else {
      //   throw error
    }
  }

  Future<dynamic> post(String api, Map<String, dynamic> data) async {
    var url = Uri.parse('${BaseAPI.baseURL}${api}');
    // var headers = {'Cookie': ''};
    var request = http.MultipartRequest('POST', url);
    // Convert data to Map<String, String> if needed
    Map<String, String> formData = {};
    data.forEach((key, value) {
      formData[key] = value.toString();
    });
    request.fields.addAll(formData);
    // request.headers.addAll(headers);
    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      return await response.stream.bytesToString();
    } else {
      //throw error
    }
  }
}
