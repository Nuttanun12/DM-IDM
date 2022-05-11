import 'package:dm_idm/main.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Usertextfiled extends StatelessWidget {
  final title;
  const Usertextfiled({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth * 0.69,
      child: TextField(
        decoration: InputDecoration(
            fillColor: HexColor('ffffff'),
            filled: true,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
            contentPadding: EdgeInsets.symmetric(horizontal: 15),
            labelText: title,
            labelStyle: TextStyle(
              height: 2.3,
            )),
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
