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
    if (bmiResult < 18) {
      finalResultText = 'Underweight';
      update();
    } else if (bmiResult > 18 && bmiResult <= 25) {
      finalResultText = 'Normal weight';
      update();
    } else if (bmiResult > 25 && bmiResult <= 29.5) {
      finalResultText = 'Overweight';
      update();
    } else if (bmiResult > 29.5 && bmiResult <= 34.5) {
      finalResultText = 'Obesity Class 1\n (Moderate)';
      update();
    } else if (bmiResult > 34.5 && bmiResult <= 39.5) {
      finalResultText = 'Obesity Class 2\n (Severe)';
      update();
    } else if (bmiResult > 39.5) {
      finalResultText = 'Obesity Class 3\n (Very Severe)';
      update();
    }
  }
}
