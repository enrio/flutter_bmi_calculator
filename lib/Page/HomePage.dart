import 'package:bmi_calculator/Page/GenderEnum.dart';
import 'package:bmi_calculator/Page/ResultPage.dart';

import './../Model/PersonInfomation.dart';
import './../component/AppViewCard.dart';
import './../component/GenderCardIcon.dart';
import './../component/app_const.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PersonInfmation persionInfo = PersonInfmation(
      gender: GenderEnum.male, height: 180, weight: 55, age: 25);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: AppViewCard(
                        onPress: _changeGender,
                        color: kCardBackgroundActiveColor,
                        child: GenderCardIcon(
                          cardGender: GenderEnum.male,
                          activeGender: persionInfo.gender,
                        ),
                      ),
                    ),
                    Expanded(
                      child: AppViewCard(
                        onPress: _changeGender,
                        color: kCardBackgroundActiveColor,
                        child: GenderCardIcon(
                          cardGender: GenderEnum.female,
                          activeGender: persionInfo.gender,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: AppViewCard(
                  color: kCardBackgroundActiveColor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Height",
                        style: kLabeTextStyle.copyWith(fontSize: 18),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: <Widget>[
                          Text(
                            persionInfo.height.toString(),
                            style: TextStyle(
                              fontSize: 60,
                              color: kTextActiveColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "cm",
                            style: TextStyle(
                              fontSize: 18,
                              color: kTextInactiveColor,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10.0, right: 10.0),
                        child: SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                              activeTrackColor: Colors.white,
                              thumbColor: Color(0xffEB1555),
                              overlayColor: Color(0x29EB1555),
                              thumbShape: RoundSliderThumbShape(
                                  enabledThumbRadius: 15.0),
                              overlayShape:
                                  RoundSliderOverlayShape(overlayRadius: 25.0)),
                          child: Slider(
                            min: 80,
                            max: 300,
                            value: persionInfo.height.toDouble(),
                            onChanged: (double value) {
                              setState(() {
                                persionInfo.height = value.round();
                              });
                            },
                            activeColor: kButtonColor,
                            inactiveColor: kTextInactiveColor,
                          ),
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
                        color: kCardBackgroundActiveColor,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "Weight",
                              style: TextStyle(
                                color: kTextInactiveColor,
                                fontSize: 18.0,
                              ),
                            ),
                            SizedBox(
                              height: 0.0,
                            ),
                            Text(
                              persionInfo.weight.toString(),
                              style: TextStyle(
                                color: kTextActiveColor,
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
                                RoundIconButton(
                                  icon: Icons.remove,
                                  onPressed: addWeight,
                                ),
                                SizedBox(
                                  width: 5.0,
                                ),
                                RoundIconButton(
                                  icon: Icons.add,
                                  onPressed: removeWeight,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: AppViewCard(
                        color: kCardBackgroundActiveColor,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "Age",
                              style: TextStyle(
                                color: kTextInactiveColor,
                                fontSize: 18.0,
                              ),
                            ),
                            SizedBox(
                              height: 0.0,
                            ),
                            Text(
                              persionInfo.age.toString(),
                              style: TextStyle(
                                color: kTextActiveColor,
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
                                RoundIconButton(
                                  icon: Icons.remove,
                                  onPressed: addAge,
                                ),
                                SizedBox(
                                  width: 5.0,
                                ),
                                RoundIconButton(
                                  icon: Icons.add,
                                  onPressed: removeAge,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              ResultPage(personInfo: persionInfo)));
                },
                child: Container(
                  color: kButtonColor,
                  height: 65.0,
                  padding: EdgeInsets.only(top: 5),
                  child: Center(
                    child: Text(
                      "Calculate",
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
        ));
  }

  void _changeGender() {
    setState(() {
      persionInfo.gender = persionInfo.gender == GenderEnum.male
          ? GenderEnum.female
          : GenderEnum.male;
    });
  }

  void addWeight() {
    setState(() {
      persionInfo.weight += 1;
    });
  }

  void removeWeight() {
    setState(() {
      persionInfo.weight -= 1;
    });
  }

  void addAge() {
    setState(() {
      persionInfo.age += 1;
    });
  }

  void removeAge() {
    setState(() {
      persionInfo.age -= 1;
    });
  }
}

class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final Function onPressed;
  RoundIconButton({this.icon, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      elevation: 0.0,
      child: Icon(
        icon,
        size: 42.0,
      ),
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF4c4f5e),
    );
  }
}
