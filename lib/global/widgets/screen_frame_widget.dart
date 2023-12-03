import 'package:flutter/material.dart';

class ScreenFrameWidget extends StatelessWidget {
  String title;

  ScreenFrameWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
    );
  }
}
