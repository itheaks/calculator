// // import 'package:flutter/material.dart';
// // import 'package:math_expressions/math_expressions.dart';
// //
// // void main() {
// //   runApp(CalculatorApp());
// // }
// //
// // class CalculatorApp extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       home: Calculator(),
// //     );
// //   }
// // }
// //
// // class Calculator extends StatefulWidget {
// //   @override
// //   _CalculatorState createState() => _CalculatorState();
// // }
// //
// // class _CalculatorState extends State<Calculator> {
// //   String _input = '';
// //   String _output = '';
// //
// //   void _buttonPressed(String buttonText) {
// //     setState(() {
// //       if (buttonText == 'C') {
// //         _input = '';
// //         _output = '';
// //       } else if (buttonText == 'CE') {
// //         _input = _input.isNotEmpty ? _input.substring(0, _input.length - 1) : '';
// //       } else if (buttonText == '=') {
// //         try {
// //           _output = _evaluateExpression(_input).toString();
// //         } catch (e) {
// //           _output = 'Error';
// //         }
// //       } else {
// //         _input += buttonText;
// //       }
// //     });
// //   }
// //
// //   double _evaluateExpression(String expression) {
// //     Parser p = Parser();
// //     Expression exp = p.parse(expression);
// //     ContextModel cm = ContextModel();
// //     return exp.evaluate(EvaluationType.REAL, cm);
// //   }
// //
// //   final List<String> _buttonTexts = [
// //     '7', '8', '9', '/', 'C',
// //     '4', '5', '6', '*', 'CE',
// //     '1', '2', '3', '-', '^',
// //     '0', '.', '(', '+', '!',
// //     'π', '√', ')', 'sin', 'cos',
// //     'tan', 'e', 'log', '%', '=',
// //   ];
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('Calculator'),
// //       ),
// //       body: Column(
// //         children: <Widget>[
// //           Container(
// //             height: 200, // Fixed display area height
// //             padding: EdgeInsets.all(16),
// //             alignment: Alignment.bottomRight,
// //             child: Column(
// //               children: [
// //                 Text(
// //                   _input,
// //                   style: TextStyle(fontSize: 24),
// //                 ),
// //                 Text(
// //                   _output,
// //                   style: TextStyle(fontSize: 36),
// //                 ),
// //               ],
// //             ),
// //           ),
// //           Expanded(
// //             child: GridView.builder(
// //               gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
// //                 crossAxisCount: 5,
// //               ),
// //               itemCount: _buttonTexts.length,
// //               itemBuilder: (BuildContext context, int index) {
// //                 return CalculatorButton(
// //                   buttonText: _buttonTexts[index],
// //                   onPressed: () {
// //                     _buttonPressed(_buttonTexts[index]);
// //                   },
// //                 );
// //               },
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }
// //
// // class CalculatorButton extends StatelessWidget {
// //   final String buttonText;
// //   final Function onPressed;
// //
// //   CalculatorButton({required this.buttonText, required this.onPressed});
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Container(
// //       margin: EdgeInsets.all(4),
// //       child: ElevatedButton(
// //         onPressed: onPressed as void Function()?,
// //         style: ElevatedButton.styleFrom(
// //           primary: Colors.blue,
// //           padding: EdgeInsets.all(16),
// //         ),
// //         child: Text(
// //           buttonText,
// //           style: TextStyle(fontSize: 20),
// //         ),
// //       ),
// //     );
// //   }
// // }
// // Correct one
//
//
// import 'package:flutter/material.dart';
// import 'package:math_expressions/math_expressions.dart';
//
// void main() {
//   runApp(CalculatorApp());
// }
//
// class CalculatorApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Calculator(),
//     );
//   }
// }
//
// class Calculator extends StatefulWidget {
//   @override
//   _CalculatorState createState() => _CalculatorState();
// }
//
// class _CalculatorState extends State<Calculator> {
//   String _input = '';
//   String _output = '';
//
//   void _buttonPressed(String buttonText) {
//     setState(() {
//       if (buttonText == 'C') {
//         _input = '';
//         _output = '';
//       } else if (buttonText == 'CE') {
//         _input = _input.isNotEmpty ? _input.substring(0, _input.length - 1) : '';
//       } else if (buttonText == '=') {
//         try {
//           _output = _evaluateExpression(_input).toString();
//         } catch (e) {
//           _output = 'Error';
//         }
//       } else {
//         _input += buttonText;
//       }
//     });
//   }
//
//   double _evaluateExpression(String expression) {
//     Parser p = Parser();
//     Expression exp = p.parse(expression);
//     ContextModel cm = ContextModel();
//     return exp.evaluate(EvaluationType.REAL, cm);
//   }
//
//   final List<String> _buttonTexts = [
//     '7', '8', '9', '/', 'C',
//     '4', '5', '6', '*', 'CE',
//     '1', '2', '3', '-', '^',
//     '0', '.', '(', '+', '!',
//     'π', '√', ')', 'sin', 'cos',
//     'tan', 'e', 'log', '%', '=',
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Calculator'),
//       ),
//       body: Column(
//         children: <Widget>[
//           Container(
//             height: 200, // Fixed display area height
//             padding: EdgeInsets.all(16),
//             alignment: Alignment.bottomRight,
//             child: Column(
//               children: [
//                 Text(
//                   _input,
//                   style: TextStyle(fontSize: 24),
//                 ),
//                 Text(
//                   _output,
//                   style: TextStyle(fontSize: 36),
//                 ),
//               ],
//             ),
//           ),
//           Expanded(
//             child: GridView.builder(
//               gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                 crossAxisCount: 5,
//               ),
//               itemCount: _buttonTexts.length,
//               itemBuilder: (BuildContext context, int index) {
//                 return CalculatorButton(
//                   buttonText: _buttonTexts[index],
//                   onPressed: () {
//                     _buttonPressed(_buttonTexts[index]);
//                   },
//                 );
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// class CalculatorButton extends StatelessWidget {
//   final String buttonText;
//   final Function onPressed;
//
//   CalculatorButton({required this.buttonText, required this.onPressed});
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.all(4),
//       child: ElevatedButton(
//         onPressed: onPressed as void Function()?,
//         style: ElevatedButton.styleFrom(
//           primary: Colors.blue,
//           padding: EdgeInsets.all(16),
//         ),
//         child: Text(
//           buttonText,
//           style: TextStyle(fontSize: 20),
//         ),
//       ),
//     );
//   }
// }
