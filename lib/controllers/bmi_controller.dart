import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BMIController extends GetxController {
  TextEditingController weightController = TextEditingController();
  TextEditingController heightController = TextEditingController();
  double bmi = 0.0;
  double weight;
  double height;

  calculateBMI() {
     weight = double.parse(weightController.value.text);
     height = double.parse(heightController.value.text);
    double bmi = weight / (height * height);
    bmi.toInt();
    return bmi;
  }

  String showResult(double bmiValue) {
    if (0 < bmiValue && bmiValue < 18.4) {
      return "Zayıf";
    } else if (18.5 < bmiValue && bmiValue < 24.9) {
      return "Normal";
    } else if (25 < bmiValue && bmiValue < 29.9) {
      return "Fazla Kilolu";
    } else if (30 < bmiValue && bmiValue < 34.9) {
      return "Şişman";
    } else if (35 < bmiValue && bmiValue < 44.9) {
      return "Fazla Şişman";
    } else {
      return "Aşırı Şişman";
    }
  }
}
