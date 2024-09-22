import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  final Color? textColor;
  final IconData? icon;
  final Color? iconColor;
  final Color backgroundColor;
  final Color? outlinedColor;
  final double? leftMargin;
  final double? topMargin;
  final double? rightMargin;
  final double? bottomMargin;
  final double width;
  final double height;
  final VoidCallback onPressed;
  final double fontSize;
  final FontWeight fontWeight;

  const MyButton(
      {super.key,
      required this.text,
      this.textColor,
      this.icon,
      this.iconColor,
      required this.backgroundColor,
      this.outlinedColor,
      this.leftMargin,
      this.topMargin,
      this.rightMargin,
      this.bottomMargin,
      required this.onPressed,
      required this.width,
      required this.height,
      required this.fontSize,
      required this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          left: leftMargin ?? 0,
          top: topMargin ?? 0,
          right: rightMargin ?? 0,
          bottom: bottomMargin ?? 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Stack(
            alignment: Alignment.center,
            // Center align items in the stack
            children: [
              // Button Container
              Container(
                width: width,
                height: height,
                child: OutlinedButton(
                  onPressed: onPressed,
                  child: null,
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(backgroundColor),
                      side: MaterialStateProperty.all(outlinedColor != null
                          ? BorderSide(color: outlinedColor!, width: 2)
                          : BorderSide.none)),
                ),
              ),
              IgnorePointer(
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // Center the content
                    children: [
                      if (icon != null)
                        Icon(
                          icon,
                          color: iconColor,
                          size: 15,
                        ),
                      Text(
                        text,
                        style: TextStyle(
                            fontSize: fontSize,
                            fontFamily: 'Poppins',
                            fontWeight: fontWeight,
                            color: textColor ?? Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
