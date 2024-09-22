import 'package:flutter/material.dart';
import 'package:tugas_aplikasi_musik/colors/color.dart';

class MyTextField extends StatelessWidget {
  final String hintText;
  final Color hintTextColor;
  final Color textColor;
  final Color backgroundColor;
  final bool isObscured;
  final IconData? iconShow;
  final IconData? iconHide;
  final VoidCallback? onPressed;
  final double height;
  final double width;
  final TextEditingController controller;

  const MyTextField({super.key,
    required this.hintText,
    required this.textColor,
    required this.backgroundColor,
    required this.isObscured,
    this.iconShow,
    this.iconHide,
    this.onPressed,
    required this.hintTextColor,
    required this.height,
    required this.width, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      child: Center(
        child: TextField(
          controller: controller,
          obscureText: isObscured,
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(
                fontFamily: 'Poppins', color: hintTextColor),
            filled: true,
            fillColor: backgroundColor,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(6),
                borderSide: BorderSide.none),
            suffixIcon: IconButton(
              icon: Icon(
                isObscured ? iconHide : iconShow,
                color: Colors.white,
                size: 15,
              ),
              onPressed: onPressed,
            ),
          ),
          style: TextStyle(
              fontFamily: 'Poppins', color: textColor, fontSize: 15),
        ),
      ),
    );
  }
}
