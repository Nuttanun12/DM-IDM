import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'appsetuppage.dart';
import '../Widget/loginfiled.dart';
import '../Widget/Icons.dart';
import '../main.dart';
import 'mainmenu.dart';

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
        actions: [
          Container(
            child: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => appsetuppage()));
              },
              child: CircleAvatar(
                backgroundColor: HexColor("FFFFFF"),
                child: CircleAvatar(
                  child: Text(
                    "P",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  backgroundColor: HexColor("2D266D"),
                  radius: 18,
                ),
                radius: 19,
              ),
            ),
          )
        ],
        toolbarHeight: screenHeight * 0.061,
        backgroundColor: HexColor("3C4455"), //สีเทา
      ),
      body: Center(
        child: Container(
          height: screenHeight * 0.794,
          width: screenWidth * 0.88,
          child: Card(
            elevation: 20,
            color: HexColor("000000"),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(35)),
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 0,
                  ),
                  Userfiled(
                    title: "UserName",
                    hidetext: false,
                    iconinput: Icon(
                      Icons.account_circle_rounded,
                      size: 40,
                      color: HexColor("000000"),
                    ),
                  ),
                  Userfiled(
                      title: "Password",
                      hidetext: true,
                      iconinput: Icon(
                        Icons.key,
                        size: 30,
                        color: HexColor("000000"),
                      )),
                  Userfiled(
                      title: "Server",
                      hidetext: false,
                      iconinput: Icon(
                        MyFlutterApp.server_1,
                        size: 30,
                        color: HexColor("000000"),
                      )),
                  Userfiled(
                      title: "Plant",
                      hidetext: false,
                      iconinput: Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Icon(
                          MyFlutterApp.factory_icon,
                          size: 34,
                          color: HexColor("000000"),
                        ),
                      )), //textfield
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        width: 127.5,
                        height: 32.5,
                        child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => mainmenu()));
                            },
                            style: TextButton.styleFrom(
                                primary: HexColor("FFFFFF"),
                                textStyle: TextStyle(
                                    fontWeight: FontWeight.w800, fontSize: 15),
                                backgroundColor: HexColor("2D6D17"),
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(50)))),
                            child: Text("Logon")),
                      ),
                      SizedBox(
                        width: 127.5,
                        height: 32.5,
                        child: TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                                primary: HexColor("FFFFFF"),
                                textStyle: TextStyle(
                                    fontWeight: FontWeight.w800, fontSize: 15),
                                backgroundColor: HexColor("C32C2C"),
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(50)))),
                            child: Text("Close")),
                      ),
                    ],
                  ), //button
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 25,
                            child: Text(
                              "Device Name :",
                              style: TextStyle(
                                  color: HexColor("FFFFFF"),
                                  fontWeight: FontWeight.w800,
                                  fontSize: 15),
                            ),
                          ),
                          Container(
                            width: 140,
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 25,
                            child: Text(
                              "Device IP :",
                              style: TextStyle(
                                  color: HexColor("FFFFFF"),
                                  fontWeight: FontWeight.w800,
                                  fontSize: 15),
                            ),
                          ),
                          Container(
                            width: 140,
                          )
                        ],
                      ),
                    ],
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
