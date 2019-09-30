import 'package:bmi_calculator/Page/GenderEnum.dart';
import 'package:bmi_calculator/component/app_const.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GenderCardIcon extends StatelessWidget {
  final GenderEnum cardGender;
  final GenderEnum activeGender;

  GenderCardIcon({@required this.cardGender, @required this.activeGender});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          cardGender == GenderEnum.male
              ? FontAwesomeIcons.mars
              : FontAwesomeIcons.venus,
          size: 80.0,
          color: activeGender == cardGender
              ? APP_CONST.text_active_color
              : APP_CONST.text_inactive_color,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          cardGender == GenderEnum.male ? "Male" : "Female",
          style: TextStyle(
            fontSize: 32.0,
            color: activeGender == cardGender
                ? APP_CONST.text_active_color
                : APP_CONST.text_inactive_color,
          ),
        ),
      ],
    );
  }
}
