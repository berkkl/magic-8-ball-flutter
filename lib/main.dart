// ignore_for_file: prefer_const_constructors
import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.tealAccent,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
              'Ask Me Anything',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.teal[400],
        ),
        body: myApp(),
      ),
    ),
  );
}

class myApp extends StatefulWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  _myAppState createState() => _myAppState();
}
int myNum = 1;
class _myAppState extends State<myApp> {
  @override

  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
                onPressed: () {
                  setState(() {
                    myNum = Random().nextInt(5)+1;
                  });
                },
                child: Image.asset('images/ball$myNum.png')
            ),
          )
        ],
      ),
    );
  }
}
