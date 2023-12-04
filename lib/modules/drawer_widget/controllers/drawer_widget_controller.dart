import 'package:get/get.dart';
import 'package:yoe_yoe_lay/global/common/session.dart';
import 'package:yoe_yoe_lay/modules/drawer_widget/models/profile_model.dart';
import 'package:yoe_yoe_lay/modules/drawer_widget/services/drawer_widget_service.dart';

class DrawerWidgetController extends GetxController {
  late ProfileModel userProfile;

  @override
  void onInit() {
    super.onInit();
    fetchProfile();
  }

  void fetchProfile() async {
    // userProfile.value = {"name": "Han"};
    userProfile = (await DrawerService().getProfile())!;
    print(userProfile);
    var session = await Session().getSession();
    print(session);
    userProfile.sessionId = session['sessionId'];
    // print(profileModel);
  }
}
