import 'package:bmical/consts/consts_color.dart';
import 'package:bmical/consts/consts_text.dart';
import 'package:bmical/view/components/custom_text.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      alignment: Alignment.center,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [bgColor, accentColor, bgColor],
        ),
      ),
      child: const CustomText(
        text: titleBar,
        color: secondaryColor,
        textSize: 20,
      ),
    );
  }
}
