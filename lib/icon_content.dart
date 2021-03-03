import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class IconContent extends StatelessWidget {
  final IconData iconData;
  final String label;

  IconContent({this.iconData, this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconData,
          size: 100.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: kTextLabelStyle,
        ),
      ],
    );
  }
}
