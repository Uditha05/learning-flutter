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
        title: Text("Demo App123"),
        leading: Icon(Icons.menu),
      ),
      backgroundColor: Colors.grey,
      body: Center(
        child: Container(
          child: RaisedButton(
            child: Text(
              "Go to calculator",
              style: TextStyle(color: Colors.white70, fontSize: 40),
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
