import 'package:flutter/material.dart';

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
                    child: buildContainer(),
                  ),
                  Expanded(
                    child: buildContainer(),
                  ),
                ],
              ),
            ),
            Expanded(
              child: buildContainer(),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: buildContainer(),
                  ),
                  Expanded(
                    child: buildContainer(),
                  ),
                ],
              ),
            ),
          ],
        ));
  }

  Container buildContainer() {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: Color(0xFF1D1F33), // must be the same below
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
