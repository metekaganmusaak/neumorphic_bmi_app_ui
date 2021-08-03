import 'package:bmi_app/constants.dart';
import 'package:bmi_app/controllers/bmi_controller.dart';
import 'package:bmi_app/widgets/neumorphism.dart';
import 'package:bmi_app/widgets/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResultPage extends StatelessWidget {
  final BMIController _bmiController = Get.put(BMIController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Neumorphism(
                    child: IconButton(
                      icon: Icon(
                        Icons.arrow_back_ios,
                        size: 21,
                      ),
                      onPressed: () {
                        Get.back();
                      },
                      color: Colors.grey[600],
                    ),
                    borderRadius: BorderRadius.circular(50),
                    height: 60,
                    width: 60,
                  ),
                  SizedBox(width: 35),
                  CustomTextStyle(
                    text: "Header",
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                  ),
                ],
              ),
              Divider(),
              SizedBox(
                height: 14,
              ),
              Text(
                "YOUR BMI",
                style: TextStyle(fontSize: 18, color: Colors.grey[600]),
              ),
              SizedBox(
                height: 14,
              ),
              Neumorphism(
                child: Center(
                    child: Text(
                  _bmiController.calculateBMI().toStringAsFixed(2),
                  style: TextStyle(fontSize: 28, color: Colors.grey[700]),
                )),
                borderRadius: BorderRadius.circular(50),
                width: 100,
                height: 100,
              ),
              SizedBox(
                height: 14,
              ),
              Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.grey[800],
                  borderRadius: BorderRadius.circular(14),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey[500],
                    ),
                    BoxShadow(
                        color: Colors.grey[100],
                        blurRadius: 12,
                        spreadRadius: -12
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomTextStyle(
                      text: _bmiController.showResult(_bmiController.calculateBMI()).toString(),
                      fontSize: 24,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                    Divider(color: Colors.grey,),
                    Text("NULL", 
                    style: TextStyle(color: Colors.grey[200]),),
                  ],
                ),
              ),
              SizedBox(height: 14,),
              Divider(),
              SizedBox(height: 14,),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("Let's Get Started", style: TextStyle(color: Colors.grey[600]),),
                      SizedBox(width: 15,),
                      Neumorphism(
                        height: 60,
                        width: 60,
                        borderRadius: BorderRadius.circular(40),
                        child: IconButton(
                          icon: Icon(Icons.arrow_forward_ios),
                          onPressed: (){},
                          color: Colors.grey[500],
                          alignment: Alignment.center,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
