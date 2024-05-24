import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int answer = 0;
  String displayText = '';
  String num1 = '';
  String num2 = '';
  String operation = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(child: Text(
          "Calculator", style: TextStyle(fontSize: 25, color: Colors.white),)),
      ),
      body:
      Column(children: <Widget>[
        if(num1 != 0 || num2 == 0)
          Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
                width: 2.0,
              ),
            ),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Text(
                    "$displayText",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20.0, color: Colors.black),
                  ),
                  Padding(padding: EdgeInsets.only(top: 10.0),
                    child: Text(
                      "Answer: $answer",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20.0, color: Colors.black),
                    ),
                  ),
                ]
            ),
          ),
        Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 65,
                width: 80,
                margin: EdgeInsets.only(top: 40.0, left: 5.0, right: 5.0),
                child: RawMaterialButton(
                  fillColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0)),
                  onPressed: () => _addition('C'),
                  child: Icon(Icons.cached, size: 25,),
                ),
              ),
              Container(
                height: 65,
                width: 80,
                margin: EdgeInsets.only(top: 40.0, left: 5.0, right: 5.0),
                child: RawMaterialButton(
                  fillColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0)),
                  onPressed: () => _addition('%'),
                  child: Icon(Icons.percent, size: 25,),
                ),
              ),

              Container(
                height: 65,
                width: 80,
                margin: EdgeInsets.only(top: 40.0, left: 5.0, right: 5.0),
                child: RawMaterialButton(
                  fillColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0)),
                  onPressed: () => _addition('back'),
                  child: Icon(Icons.cancel, size: 25,),
                ),
              ),

              Container(
                height: 65,
                width: 80,
                margin: EdgeInsets.only(top: 40.0, left: 5.0, right: 5.0),
                child: RawMaterialButton(
                  fillColor: Colors.orange,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0)),
                  onPressed: () => _addition('/'),
                  child: Text("/", textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 25, color: Colors.black)),
                ),
              ),
            ]
        ),

        Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 65,
                width: 80,
                margin: EdgeInsets.only(top: 15.0, left: 5.0, right: 5.0),
                child: RawMaterialButton(
                  fillColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0)),
                  onPressed: () => _addition('7'),
                  child: Text("7", textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 25, color: Colors.black)),
                ),
              ),
              Container(
                height: 65,
                width: 80,
                margin: EdgeInsets.only(top: 15.0, left: 5.0, right: 5.0),
                child: RawMaterialButton(
                  fillColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0)),
                  onPressed: () => _addition('8'),
                  child: Text("8", textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 25, color: Colors.black)),
                ),
              ),

              Container(
                height: 65,
                width: 80,
                margin: EdgeInsets.only(top: 15.0, left: 5.0, right: 5.0),
                child: RawMaterialButton(
                  fillColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0)),
                  onPressed: () => _addition('9'),
                  child: Text("9", textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 25, color: Colors.black)),
                ),
              ),

              Container(
                height: 65,
                width: 80,
                margin: EdgeInsets.only(top: 15.0, left: 5.0, right: 5.0),
                child: RawMaterialButton(
                  fillColor: Colors.orange,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0)),
                  onPressed: () => _addition('X'),
                  child: Text("X", textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 25, color: Colors.black)),
                ),
              ),
            ]
        ),


        Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 65,
                width: 80,
                margin: EdgeInsets.only(top: 15.0, left: 5.0, right: 5.0),
                child: RawMaterialButton(
                  fillColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0)),
                  onPressed: () => _addition('4'),
                  child: Text("4", textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 25, color: Colors.black)),
                ),
              ),
              Container(
                height: 65,
                width: 80,
                margin: EdgeInsets.only(top: 15.0, left: 5.0, right: 5.0),
                child: RawMaterialButton(
                  fillColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0)),
                  onPressed: () => _addition('5'),
                  child: Text("5", textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 25, color: Colors.black)),
                ),
              ),

              Container(
                height: 65,
                width: 80,
                margin: EdgeInsets.only(top: 15.0, left: 5.0, right: 5.0),
                child: RawMaterialButton(
                  fillColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0)),
                  onPressed: () => _addition('6'),
                  child: Text("6", textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 25, color: Colors.black)),
                ),
              ),

              Container(
                height: 65,
                width: 80,
                margin: EdgeInsets.only(top: 15.0, left: 5.0, right: 5.0),
                child: RawMaterialButton(
                  fillColor: Colors.orange,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0)),
                  onPressed: () => _addition('-'),
                  child: Text("-", textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 25, color: Colors.black)),
                ),
              ),
            ]
        ),

        Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 65,
                width: 80,
                margin: EdgeInsets.only(top: 15.0, left: 5.0, right: 5.0),
                child: RawMaterialButton(
                  fillColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0)),
                  onPressed: () => _addition('1'),
                  child: Text("1", textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 25, color: Colors.black)),
                ),
              ),
              Container(
                height: 65,
                width: 80,
                margin: EdgeInsets.only(top: 15.0, left: 5.0, right: 5.0),
                child: RawMaterialButton(
                  fillColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0)),
                  onPressed: () => _addition('2'),
                  child: Text("2", textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 25, color: Colors.black)),
                ),
              ),

              Container(
                height: 65,
                width: 80,
                margin: EdgeInsets.only(top: 15.0, left: 5.0, right: 5.0),
                child: RawMaterialButton(
                  fillColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0)),
                  onPressed: () => _addition('3'),
                  child: Text("3", textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 25, color: Colors.black)),
                ),
              ),

              Container(
                height: 65,
                width: 80,
                margin: EdgeInsets.only(top: 15.0, left: 5.0, right: 5.0),
                child: RawMaterialButton(
                  fillColor: Colors.orange,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0)),
                  onPressed: () => _addition('+'),
                  child: Text("+", textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 25, color: Colors.black)),
                ),
              ),
            ]
        ),

        Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 65,
                width: 80,
                margin: EdgeInsets.only(top: 15.0, left: 5.0, right: 5.0),
                child: RawMaterialButton(
                  fillColor: Colors.orange,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0)),
                  onPressed: () => _addition('00'),
                  child: Text("00", textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 25, color: Colors.black)),
                ),
              ),
              Container(
                height: 65,
                width: 80,
                margin: EdgeInsets.only(top: 15.0, left: 5.0, right: 5.0),
                child: RawMaterialButton(
                  fillColor: Colors.orange,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0)),
                  onPressed: () => _addition('0'),
                  child: Text("0", textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 25, color: Colors.black)),
                ),
              ),

              Container(
                height: 65,
                width: 80,
                margin: EdgeInsets.only(top: 15.0, left: 5.0, right: 5.0),
                child: RawMaterialButton(
                  fillColor: Colors.orange,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0)),
                  onPressed: () => _addition('.'),
                  child: Text(".", textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 25, color: Colors.black)),
                ),
              ),

              Container(
                height: 65,
                width: 80,
                margin: EdgeInsets.only(top: 15.0, left: 5.0, right: 5.0),
                child: RawMaterialButton(
                  fillColor: Colors.orange,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0)),
                  onPressed: () => _addition('='),
                  child: Text("=", textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 25, color: Colors.black)),
                ),
              ),
            ]
        ),
      ],
      ),
    );
  }

  _addition(String value) {
    setState(() {
      switch (value) {
        case 'C':
          {
            num1 = '';
            num2 = '';
            operation = '';
            displayText = '';
            answer = 0;
          }
          break;

        case 'back':
          {
            if (displayText.isNotEmpty) {
              // If there's an ongoing operation, remove the last character of the current input or operation
              if (num2.isNotEmpty) {
                num2 = num2.substring(0, num2.length - 1);
                displayText = '$num1 $operation $num2';
              }
              // If there's no ongoing operation, remove the last character of the first number or operator
              else if (operation.isNotEmpty) {
                operation = operation.substring(0, operation.length - 1);
                displayText = '$num1 $operation';
              }
              // If there's only the first number
              else {
                num1 = num1.substring(0, num1.length - 1);
                displayText = num1;
              }
            }
            answer = 0;
          }
          break;

        case '/':
        case 'X':
        case '-':
        case '+':
        case '%':
          {
            if (num1.isEmpty) {
              num1 = answer.toString();
              operation = value;
              displayText = '$num1 $operation';
            } else {
              num2 = '';
              operation = value;
              displayText = '$num1 $operation';
            }
          }
          break;

        case '=':
          {
            if (num1.isNotEmpty && num2.isNotEmpty) {
              double n1 = double.parse(num1);
              double n2 = double.parse(num2);
              double result = 0;
              switch (operation) {
                case '+':
                  result = n1 + n2;
                  break;
                case '-':
                  result = n1 - n2;
                  break;
                case 'X':
                  result = n1 * n2;
                  break;
                case '/':
                  result = n1 / n2;
                  break;
                case '%':
                  result = n1 % n2;
                  break;
              }
              answer = result.toInt();
            }
          }
          break;

        default:
          {
            if (operation.isEmpty) {
              num1 += value;
              displayText = num1;
            } else {
              num2 += value;
              displayText = '$num1 $operation $num2';
            }
          }
      }
    });
  }
}