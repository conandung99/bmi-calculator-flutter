import 'package:bmi_calculator/bottom_gesture_button.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/reusable_container.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATE'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: Text(
            '\tYour Result',
            style: kTextLargeStyle,
          )),
          Expanded(
            child: ReusableContainer(
              colour: kActiveColor,
              childCard: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Normal',
                    style: kTextResultStyle,
                  ),
                  Text(
                    '30',
                    style: kNumberStyle,
                  ),
                  Text('You have good body shape!'),
                ],
              ),
            ),
            flex: 5,
          ),
          Expanded(
            child: BottomGestureButton(
              centerText: 'RE-CACULATE',
              onTap: () {
                Navigator.pop(context);
              },
            ),
          )
        ],
      ),
    );
  }
}
