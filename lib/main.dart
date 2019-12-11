import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(new CalculatorApp());

class CalculatorApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext buildcx) {
    return MaterialApp(
      title: 'Charleene''s Calculator',
      home: new Calculator(),
    );
  }
}

class Calculator extends StatefulWidget {
  CalculatorState createState() => CalculatorState();
}

class CalculatorState extends State<Calculator> {
  String result = '0';
  Widget build(BuildContext buildcx) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            alignment: Alignment.centerRight,
            child: Text(result,
              textAlign: TextAlign.right,
              style: TextStyle(
                fontSize: 90,
                color: Colors.white,
              ),
            ),
          ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            FlatButton(
              onPressed: () {

              },
              child: Text(
                'AC',
                style: TextStyle(
                  fontSize: 45,
                ),
              ),
              color: Colors.grey,
              shape: CircleBorder(),
              padding: EdgeInsets.all(15.0),
            ),
            FlatButton(
              onPressed: () {

              },
              child: Text(
                '+/-',
                style: TextStyle(
                  fontSize: 50,
                ),
              ),
              color: Colors.grey,
              shape: CircleBorder(),
              padding: EdgeInsets.all(15.0),
            ),
            FlatButton(
              onPressed: () {

              },
              child: Text(
                '%',
                style: TextStyle(
                  fontSize: 50,
                ),
              ),
              color: Colors.grey,
              shape: CircleBorder(),
              padding: EdgeInsets.all(15.0),
            ),
            FlatButton(
              onPressed: () {

              },
              child: Text(
                '/',
                style: TextStyle(
                  fontSize: 50,
                  color: Colors.white,
                ),
              ),
              color: Colors.orange,
              shape: CircleBorder(),
              padding: EdgeInsets.all(15.0),
            ),
          ],
        ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              getCircleButton('7'),
              getCircleButton('8'),
              getCircleButton('9'),
              getCircleButton('x', buttonColor: Colors.orange),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              getCircleButton('4'),
              getCircleButton('5'),
              getCircleButton('6'),
              getCircleButton('-', buttonColor: Colors.orange),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              getCircleButton('1'),
              getCircleButton('2'),
              getCircleButton('3'),
              getCircleButton('+', buttonColor: Colors.orange),
            ],
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              getRoundRectButton('0', width: 150),
              getCircleButton('.'),
              getCircleButton('=', buttonColor: Colors.orange),
            ]
          ),
        ]
      ),

    );


  }

  FlatButton getCircleButton(
      String buttonText, {
        Color buttonColor = Colors.white30,
        Color textColor = Colors.white,
        int width = 50,
      }) {
    return FlatButton(
      onPressed: () {

      },
      child: Text(
        buttonText,
        style: TextStyle(
            fontSize: 50,
            color: textColor
        ),
      ),
      color: buttonColor,
      shape: CircleBorder(),
      padding: EdgeInsets.all(15.0),
    );
  }

  FlatButton getRoundRectButton(
      String buttonText, {
        Color buttonColor = Colors.white30,
        Color textColor = Colors.white,
        int width = 50,
      }){
    return FlatButton(
      onPressed: () {

      },
      child: Text(
        buttonText,
        style: TextStyle(

            fontSize: 50,
            color: textColor
        ),
      ),
      color: buttonColor,
      shape: StadiumBorder(),
      padding: EdgeInsets.only(left: 30, top: 15.0, right: 125, bottom: 15.0),
    );
  }
}