import 'package:flutter/material.dart';

class Userfiled extends StatelessWidget {
  final title;
  final iconinput;
  final hidetext;
  const Userfiled(
      {Key? key, required this.title, this.iconinput, this.hidetext})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.6,
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
          prefixIcon: iconinput,
          labelText: title,
        ),
        style: TextStyle(
            fontSize: MediaQuery.of(context).size.height * 0.027,
            height: MediaQuery.of(context).size.height * 0.001),
        obscureText: hidetext,
      ),
    );
  }
}
