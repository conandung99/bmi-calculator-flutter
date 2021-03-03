import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class BottomGestureButton extends StatelessWidget {
  const BottomGestureButton({@required this.centerText, this.onTap});
  final String centerText;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: kBottomCardColor,
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 15.0),
        width: double.infinity,
        height: kBottomHeight,
        alignment: Alignment.center,
        child: Text(
          centerText,
          style: kTextButtonStyle,
        ),
      ),
    );
  }
}
