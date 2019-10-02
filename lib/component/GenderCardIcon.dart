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
              ? kTextActiveColor
              : kTextInactiveColor,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          cardGender == GenderEnum.male ? "Male" : "Female",
          style: kLabeTextStyle.copyWith(
            color: activeGender == cardGender
                ? kTextActiveColor
                : kTextInactiveColor,
          ),
        ),
      ],
    );
  }
}
