import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Calculator()));
}

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String result = "";
  int num1 = 0;
  int num2 = 0;
  int res = 0;
  String op = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(title: Text("CALCULATOR"), elevation: 0.0),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 0.0, 10.0, 0.0),
              child: Text("${result}",
                  style: TextStyle(
                    fontSize: 30.0,
                  )),
            ),
            SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 0.0, 10.0, 0.0),
              child: Text("${res}",
                  style: TextStyle(
                    fontSize: 40.0,
                  )),
            ),
            SizedBox(height: 150.0),
            Row(
              children: [
                Container(
                  child: Expanded(
                    flex: 1,
                    child: FlatButton(
                      onPressed: () {
                        setState(() {
                          result += "7";
                        });
                      },
                      child: Text("7"),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: FlatButton(
                    onPressed: () {
                      setState(() {
                        result += "8";
                      });
                    },
                    child: Text("8"),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: FlatButton(
                      onPressed: () {
                        setState(() {
                          result += "9";
                        });
                      },
                      child: Text("9")),
                ),
                Expanded(
                  flex: 1,
                  child: FlatButton(
                      onPressed: () {
                        setState(() {
                          num1 = int.parse(result);
                          result += "/";
                          op += "/";
                        });
                      },
                      child: Text("/")),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: FlatButton(
                      onPressed: () {
                        setState(() {
                          result += "4";
                        });
                      },
                      child: Text("4")),
                ),
                Expanded(
                  flex: 1,
                  child: FlatButton(
                      onPressed: () {
                        setState(() {
                          result += "5";
                        });
                      },
                      child: Text("5")),
                ),
                Expanded(
                  flex: 1,
                  child: FlatButton(
                      onPressed: () {
                        setState(() {
                          result += "6";
                        });
                      },
                      child: Text("6")),
                ),
                Expanded(
                  flex: 1,
                  child: FlatButton(
                      onPressed: () {
                        setState(() {
                          num1 = int.parse(result);
                          result += "x";
                          op += "*";
                        });
                      },
                      child: Text("x")),
                )
              ],
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: FlatButton(
                      onPressed: () {
                        setState(() {
                          result += "1";
                        });
                      },
                      child: Text("1")),
                ),
                Expanded(
                  flex: 1,
                  child: FlatButton(
                      onPressed: () {
                        setState(() {
                          result += "2";
                        });
                      },
                      child: Text("2")),
                ),
                Expanded(
                  flex: 1,
                  child: FlatButton(
                      onPressed: () {
                        setState(() {
                          result += "3";
                        });
                      },
                      child: Text("3")),
                ),
                Expanded(
                  flex: 1,
                  child: FlatButton(
                      onPressed: () {
                        setState(() {
                          num1 = int.parse(result);
                          result += "-";
                          op = '-';
                        });
                      },
                      child: Text("-")),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: FlatButton(
                      onPressed: () {
                        setState(() {
                          result += ",";
                        });
                      },
                      child: Text(",")),
                ),
                Expanded(
                  flex: 1,
                  child: FlatButton(
                      onPressed: () {
                        setState(() {
                          result += "0";
                        });
                      },
                      child: Text("0")),
                ),
                Expanded(
                  flex: 1,
                  child: FlatButton(
                      onPressed: () {
                        setState(() {
                          result += "00";
                        });
                      },
                      child: Text("00")),
                ),
                Expanded(
                  flex: 1,
                  child: FlatButton(
                      onPressed: () {
                        setState(() {
                          num1 = int.parse(result);
                          result += "+";
                          op = '+';
                        });
                      },
                      child: Text("+")),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: FlatButton(
                      onPressed: () {
                        setState(() {
                          result = "";
                          res = 0;
                        });
                      },
                      child: Text("CLEAR")),
                ),
                Expanded(
                  flex: 1,
                  child: FlatButton(
                      onPressed: () {
                        setState(() {

                          int index;
                          String s2 = "";

                          if (result.contains('+')) {
                            index = (result.indexOf('+')) + 1;
                            for (int i = index; i < result.length; i++) {
                              s2 += result[i];
                            }
                            res = num1 + int.parse(s2);
                          }
                          else if (result.contains('-')) {
                            index = (result.indexOf('-')) + 1;
                            for (int i = index; i < result.length; i++) {
                              s2 += result[i];
                            }
                            res = num1 - int.parse(s2);
                          }
                          else if (result.contains('x')) {
                            index = (result.indexOf('x')) + 1;
                            for (int i = index; i < result.length; i++) {
                              s2 += result[i];
                            }
                            res = num1 * int.parse(s2);
                          }
                          else if (result.contains('/')) {
                            index = (result.indexOf('/')) + 1;
                            for (int i = index; i < result.length; i++) {
                              s2 += result[i];
                            }
                            res = (num1 / int.parse(s2)).toInt();
                          }
                          else {
                            res = int.parse(result);
                          }

                        });
                      },
                      child: Text("=")),
                )
              ],
            )
          ],
        ));
  }
}
