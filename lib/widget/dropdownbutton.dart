import 'package:dm_idm/page/forgoodreceiptpage1.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import '../main.dart';

class dropdownbutton extends StatefulWidget {
  final dropdownValue;
  const dropdownbutton({Key? key, required this.dropdownValue})
      : super(key: key);

  @override
  State<dropdownbutton> createState() => _dropdownbuttonState();
}

class _dropdownbuttonState extends State<dropdownbutton> {
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: HexColor("FFFFFF"), //background color of dropdown button
        border: Border.all(
            color: Colors.black38, width: 1), //border of dropdown button
        borderRadius:
            BorderRadius.circular(50), //border raiuds of dropdown button
      ),
      child: SizedBox(
        width: screenWidth * 0.69,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: DropdownButton(
            value: dropdownValue,
            items: <String>['Receipt Type', 'One', 'Two', 'Tree', 'Four']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(
                  value,
                  style: TextStyle(
                      color: HexColor("666666"),
                      fontWeight: FontWeight.w700,
                      fontSize: 18),
                ),
              );
            }).toList(),
            onChanged: (String? newValue) {
              setState(() {
                dropdownValue = newValue!;
              });
            },
            icon: Padding(
              padding: EdgeInsets.only(left: screenWidth * 0.24),
              child: Icon(Icons.arrow_drop_down),
            ),
            underline: Container(), //remove underline
          ),
        ),
      ),
    );
  }
}
