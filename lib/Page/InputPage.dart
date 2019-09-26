import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const bottomContainerHeight = 80.0;
const colorCard = Color(0xff1d1f33);
const colorButton = Color(0xffea1556);

const colorCardTitleActive = Color(0xfffeffff);
const colorCardTitleInactive = Color(0xff8e8f99);

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
                      child: AppViewCard(
                        color: colorCard,
                        child: GenderIcon(
                          color: colorCardTitleActive,
                          icon: FontAwesomeIcons.mars,
                          title: "Male",
                        ),
                      ),
                    ),
                    Expanded(
                      child: AppViewCard(
                        color: colorCard,
                        child: GenderIcon(
                          color: colorCardTitleInactive,
                          icon: FontAwesomeIcons.venus,
                          title: "Female",
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: AppViewCard(
                  color: colorCard,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Height",
                        style: TextStyle(
                            color: colorCardTitleInactive, fontSize: 18.0),
                      ),
                      SizedBox(
                        height: 5.0,
                        width: double.infinity,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Text(
                            "180",
                            style: TextStyle(
                              fontSize: 56,
                              color: colorCardTitleActive,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 25.0),
                            child: Text(
                              "cm",
                              style: TextStyle(
                                color: colorCardTitleInactive,
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          )
                        ],
                      ), // 180cm
                      SizedBox(height: 5.0),
                      Slider(
                        min: 0,
                        max: 250,
                        value: 180,
                        onChanged: null,
                        activeColor: colorButton,
                        inactiveColor: colorCardTitleActive,
                        divisions: 3,
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
                        color: colorCard,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("Weight",
                                style: TextStyle(
                                  color: colorCardTitleInactive,
                                  fontSize: 18.0,
                                )),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text("74",
                                style: TextStyle(
                                  color: colorCardTitleActive,
                                  fontSize: 56.0,
                                  fontWeight: FontWeight.bold,
                                )),
                            SizedBox(
                              height: 5.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                IconButton(
                                  icon: Icon(FontAwesomeIcons.minus),
                                  onPressed: null,
                                ),
                                IconButton(
                                  icon: Icon(FontAwesomeIcons.plus),
                                  onPressed: null,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: AppViewCard(
                        color: colorCard,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("Age",
                                style: TextStyle(
                                  color: colorCardTitleInactive,
                                  fontSize: 18.0,
                                )),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text("25",
                                style: TextStyle(
                                  color: colorCardTitleActive,
                                  fontSize: 56.0,
                                  fontWeight: FontWeight.bold,
                                )),
                            SizedBox(
                              height: 5.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                IconButton(
                                  icon: Icon(FontAwesomeIcons.minus),
                                  onPressed: null,
                                ),
                                IconButton(
                                  icon: Icon(FontAwesomeIcons.plus),
                                  onPressed: null,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                color: colorButton,
                margin: EdgeInsets.only(top: 10.0),
                height: bottomContainerHeight,
              ),
            ],
          ),
        ));
  }
}

class GenderIcon extends StatelessWidget {
  final Color color;
  final IconData icon;
  final String title;

  GenderIcon({@required this.icon, @required this.title, @required this.color});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80.0,
          color: color,
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          title,
          style: TextStyle(color: color, fontSize: 18.0),
        )
      ],
    );
  }
}

class AppViewCard extends StatelessWidget {
  // const AppViewCard({
  //   Key key,
  // }) : super(key: key);
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
