import 'package:bmical/consts/consts_color.dart';
import 'package:bmical/consts/consts_text.dart';
import 'package:bmical/controller/bmi_controller.dart';
import 'package:bmical/view/components/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class WeightAgeWidget extends StatelessWidget {
  WeightAgeWidget({super.key});
  BmiController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
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
            Container(
              height: 250,
              width: size.width * 0.48,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                gradient: LinearGradient(
                    colors: [bgColor, accentColor, bgColor],
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const CustomText(
                    text: weightText,
                    textSize: 20,
                  ),
                  CustomText(
                    text: controller.weight.toString(),
                    color: primaryColor,
                    textSize: 32,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircleAvatar(
                        backgroundColor: primaryColor,
                        child: IconButton(
                          onPressed: () {
                            controller.weightMinus();
                          },
                          icon: const Icon(
                            Icons.remove,
                            color: secondaryColor,
                          ),
                        ),
                      ),
                      CircleAvatar(
                        backgroundColor: primaryColor,
                        child: IconButton(
                          onPressed: () {
                            controller.weightPlus();
                          },
                          icon: const Icon(
                            Icons.add,
                            color: secondaryColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: 250,
              width: size.width * 0.48,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                gradient: LinearGradient(
                    colors: [bgColor, accentColor, bgColor],
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const CustomText(
                    text: ageText,
                    textSize: 20,
                  ),
                  CustomText(
                    text: controller.age.toString(),
                    color: primaryColor,
                    textSize: 32,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircleAvatar(
                        backgroundColor: primaryColor,
                        child: IconButton(
                          onPressed: () {
                            controller.ageMinus();
                          },
                          icon: const Icon(
                            Icons.remove,
                            color: secondaryColor,
                          ),
                        ),
                      ),
                      CircleAvatar(
                        backgroundColor: primaryColor,
                        child: IconButton(
                          onPressed: () {
                            controller.agePlus();
                          },
                          icon: const Icon(
                            Icons.add,
                            color: secondaryColor,
                          ),
                        ),
                      ),
                    ],
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
