import 'package:flutter/material.dart';
import 'Page/InputPage.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InputPage(),
      theme: ThemeData.dark().copyWith(
          primaryColor: Color(0xFF0c0922),
          scaffoldBackgroundColor: Color(0xFF0c0922),
          accentColor: Colors.purple,
          textTheme: TextTheme(body1: TextStyle(color: Colors.white))),
    );
  }
}
