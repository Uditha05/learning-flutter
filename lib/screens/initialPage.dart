import 'package:flutter/material.dart';
import 'package:learningapp/screens/calculatorScreen.dart';

class InitialPage extends StatefulWidget {
  InitialPage({Key key}) : super(key: key);

  @override
  _InitialPageState createState() => _InitialPageState();
}

class _InitialPageState extends State<InitialPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator App"),
        backgroundColor: Colors.red,
        leading: Icon(Icons.menu),
      ),
      backgroundColor: Colors.grey,
      body: Center(
        child: Container(
          child: RaisedButton(
            shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(20.0),
            ),
            child: Text(
              "Go to Calculator",
              style: TextStyle(color: Colors.red[900], fontSize: 40),
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CalculatorScreen()));
            },
          ),
        ),
      ),
    );
  }
}
