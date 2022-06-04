import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import '../main.dart';

class destroyiqcpage extends StatelessWidget {
  const destroyiqcpage({Key? key}) : super(key: key);

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
            "Destroy IQC",
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
                height: screenHeight * 0.24,
                width: screenWidth * 1,
                child: Card(
                  elevation: 20,
                  color: HexColor("000000"),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "Plant :",
                            style: TextStyle(
                                color: HexColor("FFFFFF"),
                                fontWeight: FontWeight.w800,
                                fontSize: 13),
                          ),
                          Container(
                            width: screenWidth * 0.69,
                            child: Container(
                              child: Row(
                                children: [
                                  Container(
                                    width: screenWidth * 0.25,
                                  ),
                                  Text(
                                    "Sloc :",
                                    style: TextStyle(
                                        color: HexColor("FFFFFF"),
                                        fontWeight: FontWeight.w800,
                                        fontSize: 13),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "Material :",
                            style: TextStyle(
                                color: HexColor("FFFFFF"),
                                fontWeight: FontWeight.w800,
                                fontSize: 13),
                          ),
                          Container(
                            width: screenWidth * 0.69,
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "Vendort :",
                            style: TextStyle(
                                color: HexColor("FFFFFF"),
                                fontWeight: FontWeight.w800,
                                fontSize: 13),
                          ),
                          Container(
                            width: screenWidth * 0.69,
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "Vend Batch :",
                            style: TextStyle(
                                color: HexColor("FFFFFF"),
                                fontWeight: FontWeight.w800,
                                fontSize: 13),
                          ),
                          Container(
                            width: screenWidth * 0.69,
                            child: Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    width: screenWidth * 0.48,
                                  ),
                                  SizedBox(
                                    height: screenHeight * 0.035,
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      child: Text(
                                        'Scan',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w800),
                                      ),
                                      style: ElevatedButton.styleFrom(
                                        primary: HexColor("2D6D17"),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(8)),
                                        elevation: 4.0,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Center(
              child: Container(
                height: screenHeight * 0.6,
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
                                                        FontWeight.w600),
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
                                              'l#',
                                              style: TextStyle(
                                                  color: HexColor("FFFFFF"),
                                                  fontWeight: FontWeight.w600),
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
                                              'InspLotNo',
                                              style: TextStyle(
                                                  color: HexColor("FFFFFF"),
                                                  fontWeight: FontWeight.w600),
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
                                              'Batch',
                                              style: TextStyle(
                                                  color: HexColor("FFFFFF"),
                                                  fontWeight: FontWeight.w600),
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
                                              'InspQty',
                                              style: TextStyle(
                                                  color: HexColor("FFFFFF"),
                                                  fontWeight: FontWeight.w600),
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
                        backgroundColor: HexColor("C32C2C"),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                      ),
                      child: Text(
                        "Clear",
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
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        primary: HexColor("FFFFFF"),
                        textStyle: TextStyle(
                            fontWeight: FontWeight.w800, fontSize: 15),
                        backgroundColor: HexColor("004193"),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                      ),
                      child: Text("Detail",
                          style: TextStyle(fontWeight: FontWeight.w800))),
                ),
              ],
            )
          ],
        ));
  }
}
