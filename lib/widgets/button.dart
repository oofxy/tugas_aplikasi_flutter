import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  final Color? textColor;
  final IconData? icon;
  final Color? iconColor;
  final Color backgroundColor;
  final Color? outlinedColor;
  final double width;
  final double height;
  final VoidCallback onPressed;
  final double fontSize;
  final FontWeight fontWeight;
  final double? borderRadius; // Add borderRadius parameter

  const MyButton({
    super.key,
    required this.text,
    this.textColor,
    this.icon,
    this.iconColor,
    required this.backgroundColor,
    this.outlinedColor,
    required this.onPressed,
    required this.width,
    required this.height,
    required this.fontSize,
    required this.fontWeight,
    this.borderRadius, // Default radius value
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              // Button Container
              Container(
                width: width,
                height: height,
                child: OutlinedButton(
                  onPressed: onPressed,
                  child: null,
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(backgroundColor),
                    side: MaterialStateProperty.all(outlinedColor != null
                        ? BorderSide(color: outlinedColor!, width: 1.5)
                        : BorderSide.none),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(borderRadius ?? 6), // Set the radius here
                      ),
                    ),
                  ),
                ),
              ),
              IgnorePointer(
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
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
                          color: textColor ?? Colors.black,
                        ),
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
