import 'package:yoe_yoe_lay/global/drawer_widget/api/drawer_api.dart';
import 'package:yoe_yoe_lay/global/drawer_widget/models/profile_model.dart';
import 'package:yoe_yoe_lay/modules/auth/models/login_model.dart';

import 'package:yoe_yoe_lay/global/common/base_client.dart';

class DrawerService {
  Future<ProfileModel> getProfile() async {
    var response = await BaseClient()
        .get(DrawerAPI().profileAPI)
        .catchError((error) => print(error));
    if (response == null) ;

    print(response.runtimeType);
    return profileFromJson(response);
  }
}
