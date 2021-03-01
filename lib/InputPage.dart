import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'IconContent.dart';
import 'ReusableContainer.dart';
import 'constants.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selected = Gender.male;
  int height = 180;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          // for full column each widget
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableContainer(
                      colour: selected == Gender.male
                          ? kActiveColor
                          : kInactiveColor,
                      childCard: IconContent(
                        iconData: FontAwesomeIcons.mars,
                        label: 'MALE',
                      ),
                      onPress: () => setState(() {
                        selected = Gender.male;
                      }),
                    ),
                  ),
                  Expanded(
                    child: ReusableContainer(
                      colour: selected == Gender.female
                          ? kActiveColor
                          : kInactiveColor,
                      childCard: IconContent(
                        iconData: FontAwesomeIcons.venus,
                        label: 'FEMALE',
                      ),
                      onPress: () => setState(() {
                        selected = Gender.female;
                      }),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReusableContainer(
                colour: kInactiveColor,
                childCard: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'HEIGHT',
                      style: kLabelTextStyle,
                    ),
                    SizedBox(height: 10.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(height.toString(), style: kNumberStyle),
                        Text('cm', style: kLabelTextStyle),
                      ],
                    ),
                    Slider(
                        value: height.toDouble(),
                        divisions: 360,
                        max: kMaxHeight,
                        min: kMinHeight,
                        activeColor: Color(0xFFEB1555),
                        inactiveColor: Color(0xFF8D8E98),
                        onChanged: (double newValue) {
                          print(newValue);
                          setState(() {
                            height = newValue.round();
                          });
                        }),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableContainer(colour: kInactiveColor),
                  ),
                  Expanded(
                    child: ReusableContainer(colour: kInactiveColor),
                  ),
                ],
              ),
            ),
            Container(
              color: kBottomCardColor,
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: kBottomHeight,
            )
          ],
        ));
  }
}
