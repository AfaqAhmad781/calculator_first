import 'package:calculator_app_build/components/my_button.dart';
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
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                Row(
                  children: [
                    MyButton(title: 'AC',
                    onPress: (){
                      print('Afaq Pressed the button');
                    }
                    ),
                    MyButton(title: '+/-',
                    onPress: (){
                      print('TApped +/- button');
                    },
                    ),
                    MyButton(title: '%',
                    onPress: (){},
                    ),
                    MyButton(title: '/' ,
                    onPress: (){},
                    color: Colors.orange,),
                  ],
                )
              ],
            ),
          ) 
        )
      )
    );
  }
}