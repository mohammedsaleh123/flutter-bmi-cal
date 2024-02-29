import 'package:bmical/controller/bmi_controller.dart';
import 'package:bmical/view/result_view.dart';
import 'package:bmical/view/widgets/home/custom_appbar_widget.dart';
import 'package:bmical/view/widgets/home/gender_widget.dart';
import 'package:bmical/view/widgets/home/height_widget.dart';
import 'package:bmical/view/widgets/home/mybutton_widget.dart';
import 'package:bmical/view/widgets/home/weight_age_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class Homeview extends StatelessWidget {
  Homeview({super.key});
  BmiController controller = Get.put(BmiController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            const SliverToBoxAdapter(child: CustomAppBar()),
            SliverToBoxAdapter(child: GenderWidget()),
            SliverToBoxAdapter(child: HeightWidget()),
            SliverToBoxAdapter(child: WeightAgeWidget()),
            SliverToBoxAdapter(
              child: MyButtonWidget(
                onPress: () {
                  controller.resultNumber();
                  controller.genderResult();
                  controller.finalResult();
                  Get.to(() => ResultView(), transition: Transition.downToUp);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
