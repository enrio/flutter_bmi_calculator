import 'package:flutter/material.dart';

class AppViewCard extends StatelessWidget {
  final Color color;

  final Widget child;
  final Function onPress;
  AppViewCard({@required this.color, this.child, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: child,
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(10.0)),
      ),
    );
  }
}
