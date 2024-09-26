import 'package:flutter/material.dart';

class PercentageText extends StatelessWidget {
  final String text;
  final Color color;

  const PercentageText({super.key, required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          Icon(
            Icons.circle,
            color: color,
            size: 16,
          ),
          SizedBox(
            width: 2,
          ),
          Text(
            text,
            style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w800,
                color: Colors.white,
                fontSize: 14
            ),
          ),
        ],
      ),
    );
  }
}
