import 'package:flutter/material.dart';

class menubutton extends StatelessWidget {
  final textcolor;
  final text;
  final color;
  final topage;

  const menubutton({
    Key? key,
    required this.color,
    this.textcolor,
    this.text,
    this.topage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SizedBox(
        height: 40,
        width: 130,
        child: TextButton(
            onPressed: () {
              if (topage != null) {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => topage));
              }
            },
            style: TextButton.styleFrom(
                primary: textcolor,
                textStyle: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
                backgroundColor: color,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12.5)))),
            child: Text(text)),
      ),
    );
  }
}
