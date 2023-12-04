import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yoe_yoe_lay/modules/drawer_widget/controllers/drawer_widget_controller.dart';

class DrawerWidget extends StatelessWidget {
  final DrawerWidgetController drawerWidgetController = Get.put(DrawerWidgetController());

  DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(drawerWidgetController.userProfile.partnerName!),
            accountEmail: Text(drawerWidgetController.userProfile.login!),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  drawerWidgetController.userProfile.avatarUrl!,
                  headers: {
                    "Cookie": drawerWidgetController.userProfile.sessionId!
                  }),
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      "https://i.natgeofe.com/n/c9107b46-78b1-4394-988d-53927646c72b/1095.jpg?w=1084.125&h=813.75"),
                  fit: BoxFit.cover),
            ),
          ),
          ListTile(
            leading: Icon(Icons.apps),
            title: const Text('Apps'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: const Text('Profile'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: const Text('Logout'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
