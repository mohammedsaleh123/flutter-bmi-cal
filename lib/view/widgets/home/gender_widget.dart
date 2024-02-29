import 'package:bmical/consts/consts_color.dart';
import 'package:bmical/consts/consts_text.dart';
import 'package:bmical/controller/bmi_controller.dart';
import 'package:bmical/view/components/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class GenderWidget extends StatelessWidget {
  GenderWidget({super.key});
  BmiController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GetBuilder<BmiController>(builder: (controller) {
      return Container(
        height: 225,
        width: double.infinity,
        margin: const EdgeInsets.symmetric(
          horizontal: 4,
          vertical: 4,
        ),
        color: bgColor,
        child: Row(
          children: [
            GestureDetector(
              onTap: () {
                controller.maleClick();
              },
              child: Container(
                width: size.width * 0.48,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  gradient: LinearGradient(
                      colors: controller.isMale == true
                          ? [bgColor, primaryColor, bgColor]
                          : [bgColor, accentColor, bgColor],
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft),
                ),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.male,
                      color: secondaryColor,
                      size: 80,
                    ),
                    CustomText(
                      text: maleText,
                      textSize: 20,
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                controller.femaleClick();
              },
              child: Container(
                width: size.width * 0.48,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  gradient: LinearGradient(
                      colors: controller.isMale == true
                          ? [bgColor, accentColor, bgColor]
                          : [bgColor, primaryColor, bgColor],
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft),
                ),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.female,
                      color: secondaryColor,
                      size: 80,
                    ),
                    CustomText(
                      text: femaleText,
                      textSize: 20,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}
