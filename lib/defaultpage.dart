import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import '../main.dart';

class def extends StatelessWidget {
  const def({Key? key}) : super(key: key);

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
            color: HexColor("000000"),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(35)),
            child: Container(),
          ),
        ),
      ),
    );
  }
}
