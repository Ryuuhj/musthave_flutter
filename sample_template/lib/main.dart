import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Stack(
            children: [
              //빨간색
              Container(
                color: Colors.red,
                width: 300,
                height: 300,
              ),
              //초록
              Container(
                color: Colors.lightGreen,
                width: 250,
                height: 250,
              ),
              //파랑
              Container(
                color: Colors.cyan,
                width: 200,
                height: 200,
              )
            ],
          )
        ),
      ),
    );
  }

}

