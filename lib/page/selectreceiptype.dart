import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import '../main.dart';
import '../widget/textfield.dart';

class receipttypepage extends StatelessWidget {
  const receipttypepage({Key? key}) : super(key: key);

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
          "Select Receipt Type",
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
            child: Column(
              children: [
                Container(
                  height: screenHeight * 0.5,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Usertextfiled(
                        title: "Receipt Type",
                      ),
                      Usertextfiled(title: "PO Number"),
                      Usertextfiled(title: "Material"),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            width: 127.5,
                            height: 32.5,
                            child: TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                    primary: HexColor("FFFFFF"),
                                    textStyle: TextStyle(
                                        fontWeight: FontWeight.w800,
                                        fontSize: 15),
                                    backgroundColor: HexColor("2D6D17"),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(50)))),
                                child: Text("OK")),
                          ),
                          SizedBox(
                            width: 127.5,
                            height: 32.5,
                            child: TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                    primary: HexColor("FFFFFF"),
                                    textStyle: TextStyle(
                                        fontWeight: FontWeight.w800,
                                        fontSize: 15),
                                    backgroundColor: HexColor("C32C2C"),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(50)))),
                                child: Text("Cancel")),
                          ),
                        ],
                      ), //button
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
