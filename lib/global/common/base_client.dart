import 'package:http/http.dart' as http;
import 'package:yoe_yoe_lay/global/api/base_api.dart';

class PrivateBaseClient {
  var client = http.Client();

  Future<dynamic> get(String api) async {
    var url = Uri.parse(BaseAPI.baseURL + api);
    var headers = {"Cookie": "session_id=100"};
    var response = await client.get(url, headers: headers);
    if (response.statusCode == 200) {
      return response.body;
    } else {
      //   throw error
    }
  }
}
