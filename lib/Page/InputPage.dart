import 'package:bmi_calculator/Page/GenderEnum.dart';
import 'package:bmi_calculator/component/AppViewCard.dart';
import 'package:bmi_calculator/component/GenderCardIcon.dart';
import 'package:bmi_calculator/component/app_const.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  GenderEnum gender = GenderEnum.male;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Expanded(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            _changeGender();
                          });
                        },
                        child: AppViewCard(
                          color: APP_CONST.card_background_active_color,
                          child: GenderCardIcon(
                            cardGender: GenderEnum.male,
                            activeGender: gender,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            _changeGender();
                          });
                        },
                        child: AppViewCard(
                          color: APP_CONST.card_background_active_color,
                          child: GenderCardIcon(
                            cardGender: GenderEnum.female,
                            activeGender: gender,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: AppViewCard(
                  color: APP_CONST.card_background_active_color,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Height",
                        style: TextStyle(
                          fontSize: 18.0,
                          color: APP_CONST.text_inactive_color,
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 5.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "180",
                            style: TextStyle(
                                fontSize: 60,
                                color: APP_CONST.text_active_color,
                                fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 30.0),
                            child: Text(
                              "cm",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: APP_CONST.text_inactive_color),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10.0, right: 10.0),
                        child: Slider(
                          min: 0,
                          max: 250,
                          value: 180,
                          onChanged: (double value) {},
                          activeColor: APP_CONST.button_color,
                          inactiveColor: APP_CONST.text_inactive_color,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: AppViewCard(
                        color: APP_CONST.card_background_active_color,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "Weight",
                              style: TextStyle(
                                color: APP_CONST.text_inactive_color,
                                fontSize: 18.0,
                              ),
                            ),
                            SizedBox(
                              height: 0.0,
                            ),
                            Text(
                              "65",
                              style: TextStyle(
                                color: APP_CONST.text_active_color,
                                fontSize: 60,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 0.0,
                              width: double.infinity,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                IconButton(
                                  icon: Icon(
                                    FontAwesomeIcons.minus,
                                    size: 32,
                                  ),
                                  color: Color(0xff101427),
                                ),
                                Icon(
                                  FontAwesomeIcons.plus,
                                  size: 32,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: AppViewCard(
                        color: APP_CONST.card_background_active_color,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                color: APP_CONST.button_color,
                height: 80.0,
                padding: EdgeInsets.only(top: 5),
                child: Center(
                  child: Text(
                    "Calculate",
                    style: TextStyle(
                      color: APP_CONST.text_inactive_color,
                      fontSize: 32.0,
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }

  void _changeGender() {
    gender = gender == GenderEnum.male ? GenderEnum.female : GenderEnum.male;
  }
}
