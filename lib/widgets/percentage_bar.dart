import 'package:flutter/material.dart';

class PercentageBar extends StatelessWidget {
  final double width;
  final Color color;
  final double? bottomLeft;
  final double? bottomRight;
  final double? topLeft;
  final double? topRight;

  const PercentageBar({
    super.key,
    required this.width,
    required this.color,
    this.bottomLeft,
    this.bottomRight,
    this.topLeft,
    this.topRight,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(bottomLeft ?? 0),
          bottomRight: Radius.circular(bottomRight ?? 0),
          topLeft: Radius.circular(topLeft ?? 0),
          topRight: Radius.circular(topRight ?? 0),
        ),
      ),
      width: width,
      height: 14,
    );
  }
}
