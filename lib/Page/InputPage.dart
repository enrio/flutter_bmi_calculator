import 'package:flutter/material.dart';

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
                        color: Color(0xff1d1f33),
                      ),
                    ),
                    Expanded(
                      child: AppViewCard(
                        color: Color(0xff1d1f33),
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: AppViewCard(
                  color: Color(0xff1d1f33),
                ),
              ),
              Expanded(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: AppViewCard(
                        color: Color(0xff1d1f33),
                      ),
                    ),
                    Expanded(
                      child: AppViewCard(
                        color: Color(0xff1d1f33),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}

class AppViewCard extends StatelessWidget {
  // const AppViewCard({
  //   Key key,
  // }) : super(key: key);
  final Color color;
  AppViewCard({@required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
          color: color, borderRadius: BorderRadius.circular(10.0)),
    );
  }
}
