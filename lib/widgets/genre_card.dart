import 'package:flutter/material.dart';
import 'package:tugas_aplikasi_musik/colors/color.dart';

class GenreCard extends StatelessWidget {
  final String text;

  const GenreCard({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Container(
        height: 40,
        decoration: BoxDecoration(
          color: color().black3,
          borderRadius: BorderRadius.circular(28),
        ),
        padding: EdgeInsets.symmetric(horizontal: 22), // Padding for better spacing
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w800,
              fontSize: 16,
              color: Colors.white
            ),
          ),
        ),
      ),
    );
  }
}
