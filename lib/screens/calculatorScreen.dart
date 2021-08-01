import 'package:flutter/material.dart';
import 'package:learningapp/service/mathFunction.dart';

class CalculatorScreen extends StatefulWidget {
  CalculatorScreen({Key key}) : super(key: key);

  @override
  _CalculatorScreenState createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  final TextEditingController t1 = new TextEditingController();
  final TextEditingController t2 = new TextEditingController();

  GlobalKey formkey = new GlobalKey();

  String out = "Result";

  void addition() {
    int x = int.parse(t1.text);
    int y = int.parse(t2.text);
    String output = Mathfunction().doAddition(x, y);
    setState(() {
      out = output;
    });
  }

  void substraction() {
    int x = int.parse(t1.text);
    int y = int.parse(t2.text);
    String output = Mathfunction().doSubstraction(x, y);
    setState(() {
      out = output;
    });
  }

  void multiplication() {
    int x = int.parse(t1.text);
    int y = int.parse(t2.text);
    String output = Mathfunction().doMultiplication(x, y);
    setState(() {
      out = output;
    });
  }

  void division() {
    int x = int.parse(t1.text);
    int y = int.parse(t2.text);
    String output = Mathfunction().doDivision(x, y);
    setState(() {
      out = output;
    });
  }

  void mod() {
    int x = int.parse(t1.text);
    int y = int.parse(t2.text);
    String output = Mathfunction().doMod(x, y);
    setState(() {
      out = output;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Calculator"),
          backgroundColor: Colors.red,
        ),
        body: Container(
          height: 500,
          child: Column(
            children: <Widget>[
              //num1 input
              Expanded(child: number1Input()),
              //num2 input
              Expanded(
                child: number2Input(),
              ),
              //result box
              Expanded(child: display()),
              //button set
              //Expanded(
              //child:
              buttons(),
            ],
          ),
        ));
  }

  Widget number1Input() {
    return Container(
        height: 200,
        child: Row(
          children: [
            //label
            Text("💥 First Number      :  ",
                style: TextStyle(color: Colors.red[800], fontSize: 20)),
            //textField
            Container(
              color: Colors.grey[200],
              width: 200,
              height: 50,
              child: TextFormField(
                controller: t1,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(8.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  hintText: "Enter Number",
                ),
                //  border: InputBorder.,
                //labelText: 'Number 1 input :',
                //hintText: 'Number 1 input :'
              ),
            ),
          ],
        ));
  }

  Widget number2Input() {
    return Container(
        height: 180,
        child: Row(
          children: [
            //label
            Text("💥 Second Number :  ",
                style: TextStyle(color: Colors.red[800], fontSize: 20)),
            //textField
            Container(
              color: Colors.grey[200],
              width: 199,
              height: 50,
              child: TextFormField(
                controller: t2,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(8.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  hintText: "Enter Number",
                  //border: InputBorder.none,
                  //labelText: 'Number 2 input :',
                  // hintText: 'Number 2 input :'
                ),
              ),
            )
          ],
        ));
  }

  Widget display() {
    return Container(
        height: 100,
        child: Row(children: [
          //label
          Text("🍁 Result                 :   ",
              style: TextStyle(color: Colors.red[800], fontSize: 20)),
          //textField

          Container(
              //color: Colors.red[200],
              width: 200,
              height: 50,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.red[500],
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
              child: Container(
                child: new Text(out),
                alignment: Alignment.center,
              ))
        ]));
  }

  Widget buttons() {
    return Container(
        height: 100,
        child: Row(
          children: <Widget>[
            Expanded(
                //  child: Center(
                child: RaisedButton(
              onPressed: addition,
              shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(30.0),
              ),
              child: SizedBox(
                width: 80,
                height: 30,
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "+",
                    style: TextStyle(color: Colors.red[900], fontSize: 25),
                  ),
                ),
              ),
            )),
            Expanded(
              // child: Center(
              child: RaisedButton(
                onPressed: substraction,
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30.0),
                ),
                child: SizedBox(
                    width: 80,
                    height: 30,
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("-",
                          style:
                              TextStyle(color: Colors.red[900], fontSize: 30)),
                    )),
              ),
            ),
            Expanded(
              // child: Center(
              child: RaisedButton(
                onPressed: multiplication,
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30.0),
                ),
                child: SizedBox(
                    width: 80,
                    height: 30,
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("x",
                          style:
                              TextStyle(color: Colors.red[900], fontSize: 20)),
                    )),
              ),
            ),
            Expanded(
              // child: Center(
              child: RaisedButton(
                onPressed: division,
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30.0),
                ),
                child: SizedBox(
                    width: 80,
                    height: 30,
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("/",
                          style:
                              TextStyle(color: Colors.red[900], fontSize: 20)),
                    )),
              ),
            ),
            Expanded(
                // child: Center(
                child: RaisedButton(
              onPressed: mod,
              shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(30.0),
              ),
              child: SizedBox(
                width: 80,
                height: 30,
                child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "MOD",
                      style: TextStyle(color: Colors.red[900], fontSize: 12),
                    )),
              ),
            ))
          ],
        ));
  }
}
