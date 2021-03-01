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
                    child: GestureDetector(
                      onTap: () => setState(() {
                        selected = Gender.male;
                      }),
                      child: ReusableContainer(
                        colour: selected == Gender.male
                            ? kActiveColor
                            : kInactiveColor,
                        childCard: IconContent(
                          iconData: FontAwesomeIcons.mars,
                          label: 'MALE',
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () => setState(() {
                        selected = Gender.female;
                      }),
                      child: ReusableContainer(
                        colour: selected == Gender.female
                            ? kActiveColor
                            : kInactiveColor,
                        childCard: IconContent(
                          iconData: FontAwesomeIcons.venus,
                          label: 'FEMALE',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReusableContainer(
                colour: kInactiveColor,
                childCard: Column(
                  children: [
                    Text(
                      'HEIGHT',
                      style: kLabelTextStyle,
                    ),
                    Row(
                      children: [
                        Text('180', style: kNumberStyle),
                        Text('cm', style: kLabelTextStyle),
                      ],
                    )
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
