import 'package:flutter/material.dart';
import 'package:learningapp/screens/calculatorScreen.dart';
import 'package:learningapp/service/mathFunction.dart';

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
        title: Text("Demo App"),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: <Color>[
                  Colors.pink,
                  Colors.purple[900],
                ]),
          ),
        ),
        leading: Icon(Icons.menu),
      ),
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 8),
          decoration: ShapeDecoration(
              gradient: LinearGradient(colors: [
                Colors.red[900],
                Colors.black87,
              ]),
              shape: StadiumBorder()),
          child: RaisedButton(
            child: Text("Go to calculator",
                style: TextStyle(color: Colors.black87, fontSize: 35)),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100)),
            elevation: 10,
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
