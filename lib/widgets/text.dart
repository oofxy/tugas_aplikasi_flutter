import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  final String text;

  const MyText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w800,
        color: Colors.white,
        fontSize: 25,
      ),
    );
  }
}
