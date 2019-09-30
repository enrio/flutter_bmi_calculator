import 'package:flutter/material.dart';

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
