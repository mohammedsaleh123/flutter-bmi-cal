import 'dart:math';

import 'package:bmical/model/bmi_model.dart';
import 'package:get/get.dart';

class BmiController extends GetxController {
  RxDouble height = 150.0.obs;
  int weight = 70;
  int age = 25;
  bool isMale = true;
  double bmiResult = 0;
  String genderResultText = '';
  String finalResultText = '';
  String summaryText = '';

  sliderVal(double val) {
    height.value = val;
    update();
  }

  maleClick() {
    isMale = true;
    update();
  }

  femaleClick() {
    isMale = false;
    update();
  }

  resultNumber() {
    bmiResult = BmiModel().weight / pow(height.value / 100, 2);
    update();
  }

  weightMinus() {
    weight--;
    if (weight < 1) {
      weight = 0;
      update();
    }
    update();
  }

  weightPlus() {
    weight++;
    update();
  }

  ageMinus() {
    age--;
    if (age < 1) {
      age = 0;
      update();
    }
    update();
  }

  agePlus() {
    age++;
    update();
  }

  genderResult() {
    if (isMale == true) {
      genderResultText = 'Male';
    } else if (isMale == false) {
      genderResultText = 'Female';
      update();
    }
  }

  finalResult() {
    if (bmiResult >= 25) {
      finalResultText = 'Overweight';
      summaryText = 'You have a higher than normal body weight. Try to exercise more.';
      update();
    } else if (bmiResult > 18.5) {
      finalResultText = 'Normal';
      summaryText = 'You have a normal body weight. Good job!';
      update();
    }
     else {
      finalResultText = 'Underweight';
      summaryText = 'You have a lower than normal body weight. You can eat a bit more.';
      update();
    }
  }
}
