import 'package:bmical/consts/consts_color.dart';
import 'package:bmical/consts/consts_text.dart';
import 'package:bmical/view/components/custom_text.dart';
import 'package:flutter/material.dart';

class MyButtonWidget extends StatelessWidget {
  const MyButtonWidget({super.key, required this.onPress});
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: size.width * 0.03, vertical: size.width * 0.01),
      child: MaterialButton(
        color: primaryColor,
        minWidth: double.infinity,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed: onPress,
        child: const Padding(
          padding: EdgeInsets.symmetric(
            vertical: 16,
          ),
          child: CustomText(
            text: buttonText,
            textSize: 20,
          ),
        ),
      ),
    );
  }
}
