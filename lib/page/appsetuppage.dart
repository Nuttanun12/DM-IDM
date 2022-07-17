import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import '../main.dart';

class appsetuppage extends StatelessWidget {
  const appsetuppage({Key? key}) : super(key: key);

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
            "Application Setup",
            style: TextStyle(
                fontWeight: FontWeight.w900, fontSize: screenHeight * 0.04),
          ),

          toolbarHeight: screenHeight * 0.061,
          backgroundColor: HexColor("3C4455"), //สีเทา
        ),
        body: Column(
          children: [
            Container(
              alignment: Alignment.topCenter,
              child: Container(
                height: screenHeight * 0.15,
                width: screenWidth * 1,
                child: Card(
                  elevation: 20,
                  color: HexColor("000000"),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20))),
                  child: Column(
                    children: [
                      Text(
                        "WebService IP :",
                        style: TextStyle(color: HexColor("FFFFFF")),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Center(
              child: Container(
                height: screenHeight * 0.69,
                width: screenWidth * 1,
                child: Card(
                  color: HexColor("000000"),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                    child: Column(
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: HexColor("FFFFFF")),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20)),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                flex: 1,
                                child: Table(
                                  border: TableBorder(
                                      right: BorderSide(
                                          color: HexColor("FFFFFF"))),
                                  children: [
                                    TableRow(
                                        decoration: BoxDecoration(
                                            color: HexColor("3C4455"),
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(20))),
                                        children: [
                                          Container(
                                              height: 30.0,
                                              child: Center(
                                                  child: Text(
                                                '',
                                                style: TextStyle(
                                                    color: HexColor("FFFFFF"),
                                                    fontWeight:
                                                        FontWeight.w700),
                                              ))),
                                        ]),
                                  ],
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Table(
                                  border: TableBorder(
                                      right: BorderSide(
                                          color: HexColor("FFFFFF"))),
                                  children: [
                                    TableRow(
                                      decoration: BoxDecoration(
                                        color: HexColor("3C4455"),
                                      ),
                                      children: [
                                        Container(
                                          height: 30.0,
                                          child: Center(
                                            child: Text(
                                              'ID',
                                              style: TextStyle(
                                                  color: HexColor("FFFFFF"),
                                                  fontWeight: FontWeight.w700),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Table(
                                  border: TableBorder(
                                      right: BorderSide(
                                          color: HexColor("FFFFFF"))),
                                  children: [
                                    TableRow(
                                      decoration: BoxDecoration(
                                        color: HexColor("3C4455"),
                                      ),
                                      children: [
                                        Container(
                                          height: 30.0,
                                          child: Center(
                                            child: Text(
                                              'Description',
                                              style: TextStyle(
                                                  color: HexColor("FFFFFF"),
                                                  fontWeight: FontWeight.w700),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Table(
                                  border: TableBorder(
                                      right: BorderSide(
                                          color: HexColor("FFFFFF"))),
                                  children: [
                                    TableRow(
                                      decoration: BoxDecoration(
                                        color: HexColor("3C4455"),
                                      ),
                                      children: [
                                        Container(
                                          height: 30.0,
                                          child: Center(
                                            child: Text(
                                              'PrinterIP',
                                              style: TextStyle(
                                                  color: HexColor("FFFFFF"),
                                                  fontWeight: FontWeight.w700),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Table(
                                  border: TableBorder.symmetric(
                                      inside: BorderSide(
                                          color: Colors.blue.shade400)),
                                  children: [
                                    TableRow(
                                      decoration: BoxDecoration(
                                          color: HexColor("3C4455"),
                                          borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(20))),
                                      children: [
                                        Container(
                                          height: 30.0,
                                          child: Center(
                                            child: Text(
                                              'Default',
                                              style: TextStyle(
                                                  color: HexColor("FFFFFF"),
                                                  fontWeight: FontWeight.w700),
                                            ),
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
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Container(
                  width: screenWidth * 0.02,
                ),
                SizedBox(
                  width: 100,
                  height: 30,
                  child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        primary: HexColor("FFFFFF"),
                        textStyle: TextStyle(
                            fontWeight: FontWeight.w800, fontSize: 15),
                        backgroundColor: HexColor("2D6D17"),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                      ),
                      child: Text(
                        "Save",
                        style: TextStyle(fontWeight: FontWeight.w800),
                      )),
                ),
                Container(
                  width: screenWidth * 0.4,
                ),
                SizedBox(
                  width: 100,
                  height: 30,
                  child: TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      style: TextButton.styleFrom(
                        primary: HexColor("FFFFFF"),
                        textStyle: TextStyle(
                            fontWeight: FontWeight.w800, fontSize: 15),
                        backgroundColor: HexColor("C32C2C"),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                      ),
                      child: Text("Cancel",
                          style: TextStyle(fontWeight: FontWeight.w800))),
                ),
              ],
            )
          ],
        ));
  }
}
