import 'package:bmi_app/constants.dart';
import 'package:bmi_app/controllers/bmi_controller.dart';
import 'package:bmi_app/views/result_page.dart';
import 'package:bmi_app/widgets/neumorphism.dart';
import 'package:bmi_app/widgets/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  final BMIController _bmiController = Get.put(BMIController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomTextStyle(
                text: Constants.headerTitle,
                fontWeight: FontWeight.normal,
                fontSize: 28,
              ),
              Divider(),
              SizedBox(height: 50,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Neumorphism(
                    height: 50,
                    width: 100,
                    child: Center(
                      child: CustomTextStyle(
                        text: Constants.weight,
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                    ),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  SizedBox(width: 20),
                  Neumorphism(
                    height: 50,
                    width: 65,
                    child: TextFormField(
                      controller: _bmiController.weightController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        suffixText: " kg  ",
                        prefixText: " ",
                      ),
                    ),
                    borderRadius: BorderRadius.circular(14),
                  ),
                ],
              ),
              SizedBox(height: 50,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Neumorphism(
                    borderRadius: BorderRadius.circular(14),
                    child: Center(
                      child: CustomTextStyle(
                        text: Constants.height,
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      )
                    ),
                    height: 50,
                    width: 100,
                  ),
                  SizedBox(width: 20),
                  Neumorphism(
                    child: TextFormField(
                      controller: _bmiController.heightController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        suffixText: " m  ",
                        prefixText: " ",
                      ),
                    ),
                    height: 50,
                    width: 65,
                    borderRadius: BorderRadius.circular(14),
                  )
                ],
              ),
              SizedBox(height: 50),
              Neumorphism(
                borderRadius: BorderRadius.circular(50),
                child: Center(
                  child: IconButton(
                    onPressed: (){
                      Get.to(
                        ResultPage(),
                        duration: Duration(milliseconds: 1),
                        transition: Transition.rightToLeftWithFade,
                        curve: Curves.easeInOut,
                      );
                    },
                    icon: Icon(Icons.arrow_forward_ios),
                    color: Colors.grey[600],
                    iconSize: 21,
                    tooltip: "Calculate",
                  ),
                ),
                width: 60,
                height: 60,
              ),
            ],
          ),
        ),
      ),
    );
  }
}