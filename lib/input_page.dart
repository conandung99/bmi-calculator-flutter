import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'IconContent.dart';
import 'ReusableContainer.dart';

const bottomCardColor = Color(0xFFE94A54); //
const bottomHeight = 70.0;
const cardColor = Color(0xFF1D1F33); //

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                    child: ReusableContainer(
                      colour: cardColor,
                      childCard: IconContent(
                        iconData: FontAwesomeIcons.mars,
                        text: 'MALE',
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableContainer(
                      colour: cardColor,
                      childCard: IconContent(
                        iconData: FontAwesomeIcons.venus,
                        text: 'FEMALE',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReusableContainer(colour: cardColor),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableContainer(colour: cardColor),
                  ),
                  Expanded(
                    child: ReusableContainer(colour: cardColor),
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
