import 'package:flutter/material.dart';
import 'package:yoe_yoe_lay/global/drawer_widget/widgets/drawer_widget.dart';

class ScreenFrameWidget extends StatelessWidget {
  String title;
  var body;

  ScreenFrameWidget({super.key, required this.title, required this.body});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        actions: [
          Icon(Icons.notifications),
        ],
      ),
      body: body,
      drawer: DrawerWidget(),
    );
  }
}
