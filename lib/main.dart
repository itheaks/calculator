import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

void main() => runApp(CalculatorApp());

class CalculatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Calculator(),
    );
  }
}

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String equation = "";
  String result = "";

  void buttonPressed(String buttonText) {
    setState(() {
      if (buttonText == "C") {
        equation = "";
        result = "";
      } else if (buttonText == "=") {
        try {
          Parser p = Parser();
          Expression exp = p.parse(equation);
          ContextModel cm = ContextModel();
          result = '${exp.evaluate(EvaluationType.REAL, cm)}';
        } catch (e) {
          result = "Error";
        }
      } else {
        equation += buttonText;
      }
    });
  }

  Widget buildButton(String buttonText, double buttonHeight, Color buttonColor) {
    return Expanded(
      child: Container(
        color: buttonColor,
        child: TextButton(
          onPressed: () => buttonPressed(buttonText),
          child: Text(
            buttonText,
            style: TextStyle(
              fontSize: 30.0,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
        backgroundColor: Colors.orange,
      ),
      body: Column(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height * 0.2,
            padding: EdgeInsets.all(20.0),
            alignment: Alignment.bottomRight,
            child: Text(
              equation,
              style: TextStyle(fontSize: 44.0),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.grey[300],
              child: Column(
                children: <Widget>[
                  Expanded(
                    child: Row(
                      children: <Widget>[
                        buildButton("7", 1, Colors.grey[300]!),
                        buildButton("8", 1, Colors.grey[300]!),
                        buildButton("9", 1, Colors.grey[300]!),
                        buildButton("/", 1, Colors.orange),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: <Widget>[
                        buildButton("4", 1, Colors.grey[300]!),
                        buildButton("5", 1, Colors.grey[300]!),
                        buildButton("6", 1, Colors.grey[300]!),
                        buildButton("*", 1, Colors.orange),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: <Widget>[
                        buildButton("1", 1, Colors.grey[300]!),
                        buildButton("2", 1, Colors.grey[300]!),
                        buildButton("3", 1, Colors.grey[300]!),
                        buildButton("-", 1, Colors.orange),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: <Widget>[
                        buildButton("C", 1, Colors.grey[300]!),
                        buildButton("0", 1, Colors.grey[300]!),
                        buildButton("=", 1, Colors.orange),
                        buildButton("+", 1, Colors.orange),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.1,
            color: Colors.orange,
            alignment: Alignment.center,
            child: Text(
              result,
              style: TextStyle(fontSize: 54.0),
            ),
          ),
        ],
      ),
    );
  }
}
