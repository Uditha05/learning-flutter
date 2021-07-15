import 'package:flutter/material.dart';

class CalculatorScreen extends StatefulWidget {
  CalculatorScreen({Key key}) : super(key: key);

  @override
  _CalculatorScreenState createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  TextEditingController texCtroller = new TextEditingController();
  GlobalKey formKey = new GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
      ),
      body: Container(
        // height: 500,
        child: Column(
          children: [
            //num1 input
            Number1Input(),

            //num2 input
            Number2Input(),

            //result box
            
            //button set
          ],
        ),
      ),
    );
  }

  Widget Number1Input() {
    return Container(
      height: 200,
      child: Row(
        children: [
          //label
          Text("Numer 1 input :"),

          //textfield
          Container(
            color: Colors.grey,
            width: 200,
            height: 100,
            child: TextFormField(
              controller: texCtroller,
              key: formKey,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  labelText: 'Numer 2 input :',
                  hintText: 'Numer 2 input :'),
            ),
          )
        ],
      ),
    );
  }

  Widget Number2Input() {
    return Container(
      height: 200,
      child: Row(
        children: [
          //label
          Text("Numer 2 input :"),

          //textfield
          Container(
            color: Colors.grey,
            width: 200,
            height: 100,
            child: TextFormField(
              controller: texCtroller,
              key: formKey,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  labelText: 'Numer 2 input :',
                  hintText: 'Numer 2 input :'),
            ),
          )
        ],
      ),
    );
  }
}
