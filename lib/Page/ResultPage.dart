import 'package:bmi_calculator/component/AppViewCard.dart';

import './../Model/PersonInfomation.dart';
import './../component/app_const.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final PersonInfmation personInfo;

  ResultPage({this.personInfo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text(
              "Your Result",
              style: kTitleTextStyleLarge,
            ),
            Expanded(
              flex: 5,
              child: AppViewCard(
                color: kCardBackgroundActiveColor,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                color: kButtonColor,
                height: 65.0,
                padding: EdgeInsets.only(top: 5),
                child: Center(
                  child: Text(
                    "Re-Calculate",
                    style: TextStyle(
                      color: kTextActiveColor,
                      fontSize: 32.0,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
