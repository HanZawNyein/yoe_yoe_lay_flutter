import 'package:flutter/material.dart';
import 'package:yoe_yoe_lay/global/widgets/screen_frame_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return ScreenFrameWidget(
      title: 'Home',
    );
  }
}
