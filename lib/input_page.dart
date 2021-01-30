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
        body: Container(
          margin: EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            color: Color(0xFF1D1F33), // must be the same below
            borderRadius: BorderRadius.circular(10.0),
          ),
          // color: Color(0xFF1D1F33), // must be the same above
          height: 200.0,
          width: 170.0,
        ));
  }
}
