import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import '../main.dart';

class printbarcodefield extends StatelessWidget {
  final title;
  final width;
  const printbarcodefield({Key? key, required this.title, this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: 35,
      child: TextField(
        decoration: InputDecoration(
            fillColor: HexColor('ffffff'),
            filled: true,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(13)),
            contentPadding: EdgeInsets.symmetric(horizontal: 15),
            labelText: title,
            labelStyle: TextStyle(
              height: 2.3,
            )),
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
