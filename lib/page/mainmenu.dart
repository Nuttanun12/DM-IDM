import 'package:dm_idm/widget/mainmenubutton.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import '../main.dart';
import 'iqcfuntion.dart';
import 'printbarcode.dart';
import 'canceldoumentpage.dart';

class mainmenu extends StatelessWidget {
  const mainmenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('2D266D'), //สี่ม่วง
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Icon(
              Icons.arrow_back_rounded,
              size: 40,
            )),
        leadingWidth: 35,
        title: Text(
          "SAP Main Manu",
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
            elevation: 20,
            color: HexColor("000000"),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(35)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: screenWidth * 0.85,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      menubutton(
                        text: "Receipt",
                        textcolor: (HexColor("FFFFFF")),
                        color: HexColor("2D6D17"),
                      ),
                      menubutton(
                        text: "Display Inv.",
                        textcolor: (HexColor("000000")),
                        color: HexColor("FFFFFF"),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: screenWidth * 0.85,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      menubutton(
                        text: "Transfer",
                        color: HexColor("FFFFFF"),
                        textcolor: HexColor("000000"),
                      ),
                      menubutton(
                        text: "App setup",
                        textcolor: (HexColor("000000")),
                        color: HexColor("FFFFFF"),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: screenWidth * 0.85,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      menubutton(
                        text: "Issue",
                        textcolor: (HexColor("000000")),
                        color: HexColor("FFFFFF"),
                      ),
                      menubutton(
                        text: "Print Barcode",
                        textcolor: (HexColor("000000")),
                        color: HexColor("FFFFFF"),
                        topage: printbarcodepage(),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: screenWidth * 0.85,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      menubutton(
                        text: "IQC Funtion",
                        textcolor: (HexColor("000000")),
                        color: HexColor("FFFFFF"),
                        topage: iqcfuntionpage(),
                      ),
                      Container(
                        width: 130,
                      )
                    ],
                  ),
                ),
                Container(
                  width: screenWidth * 0.85,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      menubutton(
                        text: "Cancel Docu",
                        textcolor: (HexColor("FFFFFF")),
                        color: HexColor("C32C2C"),
                        topage: formclassancesterpage(),
                      ),
                      Container(
                        width: 130,
                      )
                    ],
                  ),
                ),
                Container(
                  height: screenHeight * 0.25,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          Container(
                            alignment: Alignment.centerRight,
                            width: screenWidth * 0.4,
                            child: Text(
                              "Server :",
                              style: TextStyle(
                                  color: HexColor("FFFFFF"),
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            alignment: Alignment.centerRight,
                            width: screenWidth * 0.4,
                            child: Text(
                              "Web Service IP :",
                              style: TextStyle(
                                  color: HexColor("FFFFFF"),
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            alignment: Alignment.centerRight,
                            width: screenWidth * 0.4,
                            child: Text(
                              "Device Name :",
                              style: TextStyle(
                                  color: HexColor("FFFFFF"),
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            alignment: Alignment.centerRight,
                            width: screenWidth * 0.4,
                            child: Text(
                              "Device IP :",
                              style: TextStyle(
                                  color: HexColor("FFFFFF"),
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            alignment: Alignment.centerRight,
                            width: screenWidth * 0.4,
                            child: Text(
                              "User/Plant :",
                              style: TextStyle(
                                  color: HexColor("FFFFFF"),
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
