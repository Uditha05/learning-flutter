import 'package:flutter/material.dart';

class CalculatorScreen extends StatefulWidget {
  CalculatorScreen({Key key}) : super(key: key);

  @override
  _CalculatorScreenState createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  TextEditingController texCtroller = new TextEditingController();
  GlobalKey formkey = new GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
      ),
      body: Container(
          height: 500,
          child: Column(
            children: [
              //num1 input
              Number1Input(),
              //num2 input
              Number2Input(),
              //result box
              //button set
            ],
          )),
    );
  }

  Widget Number1Input() {
    return Container(
        height: 200,
        child: Row(
          children: [
            //label
            Text("Number 1 input :"),
            //textField
            Container(
              color: Colors.grey,
              width: 200,
              height: 100,
              child: TextFormField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    labelText: 'Number 1 input :',
                    hintText: 'Number 1 input :'),
              ),
            )
          ],
        ));
  }

  Widget Number2Input() {
    return Container(
        height: 200,
        child: Row(
          children: [
            //label
            Text("Number 2 input :"),
            //textField
            Container(
              color: Colors.grey,
              width: 200,
              height: 100,
              child: TextFormField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    labelText: 'Number 2 input :',
                    hintText: 'Number 2 input :'),
              ),
            )
          ],
        ));
  }
}
