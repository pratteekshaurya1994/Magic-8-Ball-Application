import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue[400],
        appBar: AppBar(
          title: Text('ASK ME ANYTHING'),
          backgroundColor: Colors.blue[900],
        ),
        body: Magic8Page(),
      ),
    ),
  );
}

class Magic8Page extends StatefulWidget {
  @override
  _Magic8PageState createState() => _Magic8PageState();
}

class _Magic8PageState extends State<Magic8Page> {
  int ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            flex: 8,
            child: Center(
              child: Image.asset('images/ball$ballNumber.png'),
            ),
          ),
          Expanded(
            child: MaterialButton(
              color: Colors.blue[900],
              child: Text(
                'Test Your Fortune',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),
              ),
              onPressed: () {
                setState(() {
                  ballNumber = Random().nextInt(5) + 1;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
