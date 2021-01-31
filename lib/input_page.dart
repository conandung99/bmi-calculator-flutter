import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
                    child: ReusableWidget(
                      colour: cardColor,
                      childCard: IconContent(
                        iconData: FontAwesomeIcons.mars,
                        text: 'MALE',
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableWidget(
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
              child: ReusableWidget(colour: cardColor),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableWidget(colour: cardColor),
                  ),
                  Expanded(
                    child: ReusableWidget(colour: cardColor),
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

class IconContent extends StatelessWidget {
  final IconData iconData;
  final String text;

  IconContent({this.iconData, this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconData,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          text,
          style: TextStyle(
            fontSize: 20.0,
            color: Color(0xFF8D8E98),
          ),
        ),
      ],
    );
  }
}

class ReusableWidget extends StatelessWidget {
  ReusableWidget({@required this.colour, @required this.childCard});
  final Color colour;
  final Widget childCard;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: childCard,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colour, // must be the same below
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
