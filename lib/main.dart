import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';
import 'textfiled.dart';

void main() {
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
      backgroundColor: HexColor('3a3f4a'),
      appBar: AppBar(
        title: Icon(
          Icons.arrow_back,
          size: 40,
        ),
        toolbarHeight: MediaQuery.of(context).size.height * 0.06,
      ),
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height * 0.9,
          width: MediaQuery.of(context).size.width * 0.8,
          child: Card(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.1,
                  ),
                  Text(
                    "Log on",
                    style: TextStyle(
                        color: HexColor('000000'),
                        fontSize: 80,
                        fontWeight: FontWeight.bold),
                  ),
                  Container(height: MediaQuery.of(context).size.height * 0.08),
                  Userfiled(
                    title: 'UserName',
                    iconinput: Icon(
                      Icons.account_circle,
                      size: MediaQuery.of(context).size.height * 0.03,
                    ),
                    hidetext: false,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.015,
                  ),
                  Userfiled(
                    title: 'Password',
                    iconinput: Icon(
                      Icons.key,
                      size: MediaQuery.of(context).size.height * 0.03,
                    ),
                    hidetext: true,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
