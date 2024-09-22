import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tugas_aplikasi_musik/colors/color.dart';

class HomeMenu extends StatelessWidget {
  const HomeMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color().black,
      body: Container(
        margin: EdgeInsets.only(right: 40, left: 40, top: 40),
        child: Column(
          children: [
            Text(
              'Artist you might like',
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w800,
                  color: Colors.white,
                  fontSize: 27),
            ),
            Row(

            )
          ],
        ),
      ),
    );
  }
}
