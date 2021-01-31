import 'package:flutter/material.dart';

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
                    child: ReusableWidget(colour: cardColor),
                  ),
                  Expanded(
                    child: ReusableWidget(colour: cardColor),
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

class ReusableWidget extends StatelessWidget {
  ReusableWidget({@required this.colour});
  final Color colour;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colour, // must be the same below
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
