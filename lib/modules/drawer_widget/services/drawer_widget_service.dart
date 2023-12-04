
import 'package:yoe_yoe_lay/global/common/base_client.dart';
import 'package:yoe_yoe_lay/global/common/session.dart';
import 'package:yoe_yoe_lay/modules/drawer_widget/api/drawer_api.dart';
import 'package:yoe_yoe_lay/modules/drawer_widget/models/profile_model.dart';

class DrawerService {
  Future<ProfileModel> getProfile() async {
    var response = await BaseClient()
        .get(DrawerAPI().profileAPI)
        .catchError((error) => print(error));
    print("response");
    print(response);
    if (response == null){
      await Session().getSession();
      return getProfile();
      throw UnimplementedError();
    };
    return profileFromJson(response);
  }
}
