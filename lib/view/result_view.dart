import 'package:bmical/consts/consts_color.dart';
import 'package:bmical/view/components/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/bmi_controller.dart';

// ignore: must_be_immutable
class ResultView extends StatelessWidget {
  ResultView({super.key});
  BmiController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BmiController>(builder: (controller) {
      return Scaffold(
        backgroundColor: bgColor,
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: const Icon(
                Icons.arrow_back,
                color: secondaryColor,
              )),
          backgroundColor: bgColor,
          title: const CustomText(
            text: 'Result',
            color: secondaryColor,
          ),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: const EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const CustomText(
                    text: 'Your Bmi is : ',
                    textSize: 20,
                  ),
                  CustomText(
                    text: controller.bmiResult.toInt().toString(),
                    color: primaryColor,
                    textSize: 20,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const CustomText(
                    text: 'Gender : ',
                    textSize: 20,
                  ),
                  CustomText(
                    text: controller.genderResultText,
                    color: primaryColor,
                    textSize: 20,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const CustomText(
                    text: 'Height : ',
                    textSize: 20,
                  ),
                  CustomText(
                    text: controller.height.value.toInt().toString(),
                    color: primaryColor,
                    textSize: 20,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const CustomText(
                    text: 'Weight : ',
                    textSize: 20,
                  ),
                  CustomText(
                    text: controller.weight.toString(),
                    color: primaryColor,
                    textSize: 20,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const CustomText(
                    text: 'Age : ',
                    textSize: 20,
                  ),
                  CustomText(
                    text: controller.age.toString(),
                    color: primaryColor,
                    textSize: 20,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const CustomText(
                    text: 'Result : ',
                    textSize: 20,
                  ),
                  CustomText(
                    text: controller.finalResultText,
                    color: primaryColor,
                    textSize: 20,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: CustomText(
                      text:
                          "${controller.summaryText}\nRemember that...\nthe true measure is your reflection in the mirror and how you feel\n about your health",
                      color: primaryColor,
                      textSize: 20,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    });
  }
}
