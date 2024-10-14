import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  final String text;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? color;

  const MyText({super.key, required this.text, this.fontSize, this.fontWeight, this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: 'Poppins',
        fontWeight: fontWeight ?? FontWeight.w800,
        color: color ?? Colors.white,
        fontSize: fontSize ?? 27,
        decoration: TextDecoration.none,
      ),
    );
  }
}
