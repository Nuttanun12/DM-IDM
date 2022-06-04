import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'destroyiqcpage.dart';
import '../main.dart';

class iqcfuntionpage extends StatelessWidget {
  const iqcfuntionpage({Key? key}) : super(key: key);

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
          "IQC Funtion",
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
              children: [
                Container(
                  height: screenHeight * 0.39,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        height: 42.5,
                        width: 250,
                        child: TextButton(
                          style: TextButton.styleFrom(
                            primary: HexColor("FFFFFF"),
                            backgroundColor: HexColor("C32C2C"),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(50),
                              ),
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => destroyiqcpage()));
                          },
                          child: Text(
                            "Destroy IQC",
                            style: TextStyle(
                                fontSize: 17.5, fontWeight: FontWeight.w800),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 42.5,
                        width: 250,
                        child: TextButton(
                          style: TextButton.styleFrom(
                            primary: HexColor("000000"),
                            backgroundColor: HexColor("FFFFFF"),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(50),
                              ),
                            ),
                          ),
                          onPressed: () {},
                          child: Text(
                            "Block to Store",
                            style: TextStyle(
                                fontSize: 17.5, fontWeight: FontWeight.w800),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 42.5,
                        width: 250,
                        child: TextButton(
                          style: TextButton.styleFrom(
                            primary: HexColor("000000"),
                            backgroundColor: HexColor("FFFFFF"),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(50),
                              ),
                            ),
                          ),
                          onPressed: () {},
                          child: Text(
                            "Manual Print Label",
                            style: TextStyle(
                                fontSize: 17.5, fontWeight: FontWeight.w800),
                          ),
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
    );
  }
}
