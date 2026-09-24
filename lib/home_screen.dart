import 'package:calculator_app_build/components/my_button.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  String userInput = '';
  String answer = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                Column(
                  children: [
                    Row(
                  children: [
                    MyButton(title: 'AC',
                    onPress: (){}
                    ),
                    MyButton(title: '+/-',
                    onPress: (){},
                    ),
                    MyButton(title: '%',
                    onPress: (){},
                    ),
                    MyButton(title: '/' ,
                    onPress: (){},
                    color: Colors.orange,),
                  ],
                ),
                Row(
                  children: [
                    MyButton(title: 'AC',
                    onPress: (){}
                    ),
                    MyButton(title: '+/-',
                    onPress: (){},
                    ),
                    MyButton(title: '%',
                    onPress: (){},
                    ),
                    MyButton(title: '/' ,
                    onPress: (){},
                    color: Colors.orange,),
                  ],
                ),
                Row(
                  children: [
                    MyButton(title: 'AC',
                    onPress: (){}
                    ),
                    MyButton(title: '+/-',
                    onPress: (){},
                    ),
                    MyButton(title: '%',
                    onPress: (){},
                    ),
                    MyButton(title: '/' ,
                    onPress: (){},
                    color: Colors.orange,),
                  ],
                ),
                Row(
                  children: [
                    MyButton(title: 'AC',
                    onPress: (){}
                    ),
                    MyButton(title: '+/-',
                    onPress: (){},
                    ),
                    MyButton(title: '%',
                    onPress: (){},
                    ),
                    MyButton(title: '/' ,
                    onPress: (){},
                    color: Colors.orange,),
                  ],
                ),
                  ],
                )
              ],
            ),
          ) 
        )
      );
  }
}