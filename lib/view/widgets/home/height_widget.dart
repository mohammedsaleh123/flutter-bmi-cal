import 'package:bmical/consts/consts_color.dart';
import 'package:bmical/consts/consts_text.dart';
import 'package:bmical/controller/bmi_controller.dart';
import 'package:bmical/view/components/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class HeightWidget extends StatelessWidget {
  HeightWidget({super.key});
  BmiController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BmiController>(builder: (controller) {
      return Container(
        height: 220,
        width: double.infinity,
        margin: const EdgeInsets.symmetric(
          horizontal: 4,
          vertical: 4,
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [bgColor, accentColor, bgColor],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const CustomText(
              text: heightText,
              textSize: 20,
            ),
            CustomText(
              text: controller.height.toInt().toString(),
              color: primaryColor,
              textSize: 40,
            ),
            Slider(
              value: controller.height.value.toDouble(),
              min: 50.0,
              max: 200.0,
              activeColor: primaryColor,
              onChanged: (value) {
                controller.sliderVal(value);
              },
            ),
          ],
        ),
      );
    });
  }
}
