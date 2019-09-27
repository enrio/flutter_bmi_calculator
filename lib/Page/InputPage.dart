import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// App const
const cardBackgroundColor = Color(0xff1d1f33);
const textActiveColor = Color(0xffFFFFFF);
const textInactiveColor = Color(0xff8E8E99);

const buttonColor = Color(0xffEA1556);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                          onTap: (){
                              print("Male tapped");
                          } ,
                        child: AppViewCard(
                          color: cardBackgroundColor,
                          child: GenderCardIcon(
                            isMale: true,
                            isActive: true,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: AppViewCard(
                        color: cardBackgroundColor,
                        child: GenderCardIcon(
                          isMale: false,
                          isActive: false,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: AppViewCard(
                  color: cardBackgroundColor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Height",
                        style: TextStyle(
                          fontSize: 18.0,
                          color: textInactiveColor,
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
                                color: textActiveColor,
                                fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 30.0),
                            child: Text(
                              "cm",
                              style: TextStyle(
                                  fontSize: 18, color: textInactiveColor),
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
                          activeColor: buttonColor,
                          inactiveColor: textInactiveColor,
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
                        color: cardBackgroundColor,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "Weight",
                              style: TextStyle(
                                color: textInactiveColor,
                                fontSize: 18.0,
                              ),
                            ),
                            SizedBox(
                              height: 0.0,
                            ),
                            Text(
                              "65",
                              style: TextStyle(
                                color: textActiveColor,
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
                        color: cardBackgroundColor,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                color: buttonColor,
                height: 80.0,
                padding: EdgeInsets.only(top: 5),
                child: Center(
                  child: Text(
                    "Calculate",
                    style: TextStyle(
                      color: textActiveColor,
                      fontSize: 32.0,
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}

class GenderCardIcon extends StatelessWidget {
  final bool isMale;
  final bool isActive;

  GenderCardIcon({this.isMale, this.isActive});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          isMale ? FontAwesomeIcons.mars : FontAwesomeIcons.venus,
          size: 80.0,
          color: isActive ? textActiveColor : textInactiveColor,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          isMale ? "Male" : "Female",
          style: TextStyle(
            fontSize: 32.0,
            color: isActive ? textActiveColor : textInactiveColor,
          ),
        ),
      ],
    );
  }
}

class AppViewCard extends StatelessWidget {
  final Color color;

  final Widget child;

  AppViewCard({@required this.color, this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
          color: color, borderRadius: BorderRadius.circular(10.0)),
    );
  }
}
