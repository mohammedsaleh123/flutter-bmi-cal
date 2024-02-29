import 'package:bmical/consts/consts_color.dart';
import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    super.key,
    required this.text,
    this.color = secondaryColor,
    this.textSize = 16,
    this.overflow,
  });
  final String text;
  final Color color;
  final double textSize;
  final TextOverflow? overflow;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: textSize,
      ),
      maxLines: 5,
      overflow: overflow,
      textAlign: TextAlign.center,
    );
  }
}
