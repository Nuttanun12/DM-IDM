import 'package:dm_idm/page/forinventorypage2.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import '../main.dart';
import '../widget/printbarcodefield.dart';

class printbarcodeinventory extends StatelessWidget {
  const printbarcodeinventory({Key? key}) : super(key: key);

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
          "Print Barcode form Inventory",
          style: TextStyle(
              fontWeight: FontWeight.w900, fontSize: screenHeight * 0.03),
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
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(35)),
              child: Column(
                children: [
                  Container(
                    height: screenHeight * 0.5,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            printbarcodefield(
                              title: "Material",
                              width: screenWidth * 0.29,
                            ),
                            printbarcodefield(
                              title: "Batch",
                              width: screenWidth * 0.29,
                            ),
                            SizedBox(
                              height: 30,
                              child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  "Load",
                                  style: TextStyle(
                                      color: HexColor("FFFFFF"),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                                ),
                                style: TextButton.styleFrom(
                                    backgroundColor: HexColor("2D6D17"),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(13)))),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            printbarcodefield(
                              title: "QTY/Box",
                              width: screenWidth * 0.29,
                            ),
                            printbarcodefield(
                              title: "UOM",
                              width: screenWidth * 0.19,
                            ),
                            printbarcodefield(
                              title: "MGF/Date",
                              width: screenWidth * 0.27,
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            printbarcodefield(
                              title: "Vendor",
                              width: screenWidth * 0.29,
                            ),
                            Container(
                              width: screenWidth * 0.49,
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            printbarcodefield(
                              title: "Vendor Barch",
                              width: screenWidth * 0.48,
                            ),
                            printbarcodefield(
                              title: "Customer",
                              width: screenWidth * 0.29,
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            printbarcodefield(
                              title: "Manufacturer",
                              width: screenWidth * 0.35,
                            ),
                            Container(
                              width: screenWidth * 0.42,
                            )
                          ],
                        ),
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
                                            builder: (context) =>
                                                inputnumberofprintlabel2()));
                                  },
                                  style: TextButton.styleFrom(
                                      primary: HexColor("FFFFFF"),
                                      textStyle: TextStyle(
                                          fontWeight: FontWeight.w800,
                                          fontSize: 15),
                                      backgroundColor: HexColor("004193"),
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(50)))),
                                  child: Text("Print")),
                            ),
                            SizedBox(
                              width: 127.5,
                              height: 32.5,
                              child: TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
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
                        )
                      ],
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
