import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yoe_yoe_lay/global/common/session.dart';
import 'package:yoe_yoe_lay/global/drawer_widget/models/profile_model.dart';
import 'package:yoe_yoe_lay/global/drawer_widget/services/drawer_widget_service.dart';
import 'package:yoe_yoe_lay/modules/auth/models/login_model.dart';
import 'package:yoe_yoe_lay/modules/auth/services/auth_services.dart';

class DrawerWidgetController extends GetxController {
  late ProfileModel userProfile;

  @override
  void onInit() {
    super.onInit();
    fetchProfile();
  }

  void fetchProfile() async {
    // userProfile.value = {"name": "Han"};
    userProfile = await DrawerService().getProfile();
    var session = await Session().getSession();
    userProfile.sessionId = session['sessionId'];
    // print(profileModel);
  }
}
