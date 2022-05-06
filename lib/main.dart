import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';
import 'textfiled.dart';
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

class Loginpage extends StatefulWidget {
  const Loginpage({Key? key}) : super(key: key);

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('2D266D'), //สี่ม่วง
      appBar: AppBar(
        title: Text(
          "Logon SAP",
          style: TextStyle(
              fontWeight: FontWeight.w900, fontSize: screenHeight * 0.04),
        ),
        toolbarHeight: screenHeight * 0.061,
        backgroundColor: HexColor("3C4455"), //สีเทา
      ),
      body: Center(
        child: Container(
          height: screenHeight * 0.794,
          width: screenWidth * 0.88,
          child: Card(
            color: HexColor("000000"),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(35)),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: screenHeight * 0.07,
                  ),
                  Userfiled(
                    title: "UserName",
                    hidetext: false,
                    iconinput: Icon(
                      Icons.account_circle_rounded,
                      size: 40,
                      color: HexColor("000000"),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
