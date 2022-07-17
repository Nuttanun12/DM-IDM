import 'package:dm_idm/page/simple_table.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'page/loginpage.dart';
import 'dart:ui' as ui;

late double screenWidth;
late double screenHeight;

void main() {
  screenWidth = ui.window.physicalSize.width / ui.window.devicePixelRatio;
  screenHeight = ui.window.physicalSize.height / ui.window.devicePixelRatio;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    return MaterialApp(
      title: "My App",
      home: Loginpage(),
    );
  }
}
