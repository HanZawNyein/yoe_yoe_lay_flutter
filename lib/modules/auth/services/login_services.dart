import 'package:yoe_yoe_lay/modules/auth/models/login_model.dart';

import 'package:yoe_yoe_lay/global/common/base_client.dart';
import 'package:yoe_yoe_lay/modules/auth/api/auth_api.dart';

class LoginService {
  Future<LoginModel> postLogin(Map<String, dynamic> body) async {
    var response = await BaseClient()
        .post(AuthAPI().loginAPI, body)
        .catchError((error) => print(error));
    print(response);
    if (response == null) ;
    return loginFromJson(response);
  }
}
