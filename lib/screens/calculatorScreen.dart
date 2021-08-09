import 'dart:io';
import 'dart:ffi';
import 'dart:io';

import 'package:flutter/material.dart';

class CalculatorScreen extends StatefulWidget {
  CalculatorScreen({Key key}) : super(key: key);

  @override
  _CalculatorScreenState createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  TextEditingController texCtroller = new TextEditingController();
  GlobalKey formKey = new GlobalKey();
  String output = "Result";

  var theResult, firstNum, secondNum;
  Void multiplyTheNums() {
    setState(() {
      theResult = firstNum * secondNum;
    });
  }

  Void addTheNums() {
    setState(() {
      theResult = firstNum + secondNum;
    });
  }

  Void divideTheNums() {
    setState(() {
      theResult = firstNum / secondNum;
    });
  }

  Void subtractTheNums() {
    setState(() {
      theResult = firstNum - secondNum;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
        leading: Icon(Icons.calculate_sharp),
      ),
      body: Container(
          height: 500,
          child: Column(
            children: [
              //num1 input
              FirstNumber(),

              //num2 input
              SecondNumber(),

              //result box
              Row(
                children: <Widget>[
                  Text(
                    "Result                  :",
                    style: TextStyle(fontSize: 15.0),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.purple[800],
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(70))),
                    width: 200,
                    height: 50,
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    //controller: title,
                  )
                ],
              ),
              Button(),
            ],
          )
          //button set
          ),
    );
  }

  Widget FirstNumber() {
    return Container(
      height: 50,
      child: Row(
        children: [
          //lable
          Text("First Number        :"),

          //textfield
          Container(
            decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.purple[800],
                ),
                borderRadius: BorderRadius.all(Radius.circular(70))),
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            width: 200,
            height: 100,
            child: TextFormField(
              decoration: InputDecoration(
                hintText: "Enter Number",
              ),
              keyboardType: TextInputType.number,
              controller: texCtroller,
              key: formKey,
            ),
          ),
        ],
      ),
    );
  }

  Widget SecondNumber() {
    return Container(
      height: 50,
      child: Row(
        children: [
          //lable
          Text("Second Number   :"),

          //textfield
          Container(
            decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.purple[800],
                ),
                borderRadius: BorderRadius.all(Radius.circular(70))),
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            width: 200,
            height: 100,
            child: TextFormField(
              decoration: InputDecoration(
                hintText: "Enter Number",
              ),
              keyboardType: TextInputType.number,
              controller: texCtroller,
              key: formKey,
            ),
          ),
        ],
      ),
    );
  }

  Widget Button() {
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Container(
          decoration: ShapeDecoration(
              gradient:
                  LinearGradient(colors: [Colors.red[800], Colors.black87]),
              shape: StadiumBorder()),
          child: RaisedButton(
            onPressed: multiplyTheNums,
            child: Text("*"),
          ),
        ),
        Container(
          decoration: ShapeDecoration(
              gradient:
                  LinearGradient(colors: [Colors.red[800], Colors.black87]),
              shape: StadiumBorder()),
          child: RaisedButton(
            onPressed: addTheNums,
            child: Text("+"),
          ),
        ),
        Container(
          decoration: ShapeDecoration(
              gradient:
                  LinearGradient(colors: [Colors.red[800], Colors.black87]),
              shape: StadiumBorder()),
          child: RaisedButton(
            onPressed: divideTheNums,
            child: Text("/"),
          ),
        ),
        Container(
          decoration: ShapeDecoration(
              gradient:
                  LinearGradient(colors: [Colors.red[800], Colors.black87]),
              shape: StadiumBorder()),
          child: RaisedButton(
            onPressed: subtractTheNums,
            child: Text("-"),
          ),
        )
      ],
    );
  }
}
