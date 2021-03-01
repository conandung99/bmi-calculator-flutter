import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'IconContent.dart';
import 'ReusableContainer.dart';

const bottomCardColor = Color(0xFFE94A54); //
const bottomHeight = 70.0;
const inactiveColor = Color(0xFF1D1F33); //
const activeColor = Color(0xFF292B3B); //

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
                            ? activeColor
                            : inactiveColor,
                        childCard: IconContent(
                          iconData: FontAwesomeIcons.mars,
                          text: 'MALE',
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
                            ? activeColor
                            : inactiveColor,
                        childCard: IconContent(
                          iconData: FontAwesomeIcons.venus,
                          text: 'FEMALE',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReusableContainer(colour: inactiveColor),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableContainer(colour: inactiveColor),
                  ),
                  Expanded(
                    child: ReusableContainer(colour: inactiveColor),
                  ),
                ],
              ),
            ),
            Container(
              color: bottomCardColor,
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: bottomHeight,
            )
          ],
        ));
  }
}
