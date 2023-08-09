import 'package:flutter/material.dart';
import  'dart:ui';

class Calculator extends StatefulWidget {
  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String userInput = "";
  String result = "0";

  List<String> buttonList = [
    'AC',
    '(',
    ')',
    '/',
    '7',
    '8',
    '9',
    '*',
    '4',
    '5',
    '6',
    '+',
    '1',
    '2',
    '-',
    'C',
    '0',
    '.',
    '=',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height /3,
            child: Column(children: [
              Container(
                padding: EdgeInsets.all(20),
                alignment: Alignment.centerRight,
                child: Text(
                  userInput,
                  style: TextStyle(
                    fontSize: 32,
                    color: Colors.blue,
                  ),
                ),
              ),
               Container(
                padding: EdgeInsets.all(10),
                alignment: Alignment.centerRight,
                child: Text(
                  result,
                  style: TextStyle(
                    fontSize: 32,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ]
            ),
          ),
          Divider(color: Colors.white),
          Expanded(child: Container(
            padding: EdgeInsets.all(10),
            child: GridView.builder(
              itemCount: buttonList.length,
              gridDelegate: SilverGridDelegateWithFixedCrossAxisCount(context
              crossAxisCount: 4,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              ),
             itemBuilder: (BuildContext context, int index){
              return CustomButton(buttonList[index]);
             })
          )),
        ],),
    );
  }
  Widget CustomButton(String Text){
    return InkWell(
      splashColor: Colors.blue,
      onTap: (){},
      child: Ink(
        decoration: BoxDecoration(
          color: getBgColor(text),
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
            color: Colors.white.withOpacity(0.1),
            blurRadius: 4,
            offset: Offset(-3, -3),
            ),
          ],
        ), 
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: getColor(text),
              fontSize: 30,
            fontWeight: FontWeight.bold,
            ),
            ),
        ),
        ),
    );
  }
  getColor(){
  if(
  text == "/"||
  text == "/"||
  text == "/"|
  |text == "/"||
  text == "/"||
  text == "/"||){
      return Color.fromARGB(255, 252, 100, 100);
      }
      return Colors.white;
  }
  getBgColor(String text){
    if(text == "AC") {
      return Color.fromARGB(255, 0, 0, 255);
    }
    if (text == "="){
      return Color.fromARGB(255, 0, 0, 255);
    }

  }
}
