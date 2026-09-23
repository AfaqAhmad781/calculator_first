import 'package:calculator_app_build/constants.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Text('Building Calculator from scratch' , style: TextStyle(fontSize: 25, color: tealColor), ),
              Text('Building Calculator from scratch' , style: TextStyle(fontSize: 25, color: tealColor), ),
              Text('Building Calculator from scratch' , style: TextStyle(fontSize: 25, color: tealColor), ),
              Text('Building Calculator from scratch' , style: TextStyle(fontSize: 25, color: tealColor), ),
              Text('Building Calculator from scratch' , style: TextStyle(fontSize: 25, color: tealColor), ),
            ],
          )
        )
      ),
    );
  }
}