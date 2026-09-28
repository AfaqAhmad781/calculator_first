import 'package:calculator_app_build/components/my_button.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  var userInput = '';
  var answer = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: false,
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Simple Calculator Lite'),
        flexibleSpace: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            Color(0xffa5a5a5),
            Colors.orange,
            Color(0xffa5a5a5),
        ],
      ),
    ),
  ),
  actions: [
    PopupMenuButton<String>(
  color: Colors.grey.shade900,

  menuPadding: const EdgeInsets.symmetric(vertical: 8),

  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(15),
  ),

  elevation: 8,

  itemBuilder: (BuildContext context) {
    return const [
      PopupMenuItem(
        value: 'settings',
        child: Text(
          'Settings',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
      ),
      PopupMenuItem(
        value: 'about',
        child: Text(
          'About',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
      ),
      PopupMenuItem(
        value: 'help',
        child: Text(
          'Help',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
      ),
    ];
  },
)
  ],
),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Text(userInput.toString(),
                          style: TextStyle(
                            fontSize: 30, color: Colors.white,
                          ),
                          ),
                        ),
                        Text(answer.toString(),
                        style: TextStyle(
                          fontSize: 30, fontWeight: FontWeight.w100 , color: Colors.white, fontStyle: FontStyle.italic
                        ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Padding(
                     padding: const EdgeInsets.symmetric(vertical: 25),
                    child: Column(
                      children: [
                    Expanded(
                      child: Row(
                        children: [
                          MyButton(title: 'AC',
                          onPress: (){
                            userInput = '';
                            answer = '' ;
                            setState(() {
                              
                            });
                          }
                          ),
                          MyButton(title: '+/-',
                          onPress: (){
                            userInput += '+/-' ;
                            setState(() {
                              
                            });
                          },
                          ),
                          MyButton(title: '%',
                          onPress: (){
                            userInput += '%' ;
                            setState(() {
                              
                            });
                          },
                          ),
                          MyButton(title: '/' ,
                          color: Colors.orange,
                          onPress: (){
                            userInput += '/' ;
                            setState(() {
                              
                            }
                          );
                          },
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          MyButton(title: '7',
                          onPress: (){
                            userInput += '7' ;
                            setState(() {
                              
                            });
                          }
                          ),
                          MyButton(title: '8',
                          onPress: (){
                            userInput += '8' ;
                            setState(() {
                              
                            });
                          },
                          ),
                          MyButton(title: '9',
                          onPress: (){
                            userInput += '9' ;
                            setState(() {
                              
                            });
                          },
                          ),
                          MyButton(title: 'x' ,
                          onPress: (){
                            userInput += 'x' ;
                            setState(() {
                              
                            });
                          },
                          color: Colors.orange,),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          MyButton(title: '4',
                          onPress: (){
                            userInput += '4' ;
                            setState(() {
                              
                            });
                          }
                          ),
                          MyButton(title: '5',
                          onPress: (){
                            userInput += '5' ;
                            setState(() {
                              
                            });
                          },
                          ),
                          MyButton(title: '6',
                          onPress: (){
                            userInput += '6' ;
                            setState(() {
                              
                            });
                          },
                          ),
                          MyButton(title: '-' ,
                          onPress: (){
                            userInput += '-' ;
                            setState(() {
                              
                            });
                          },
                          color: Colors.orange,),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          MyButton(title: '1',
                          onPress: (){
                            userInput += '1' ;
                            setState(() {
                              
                            });
                          }
                          ),
                          MyButton(title: '2',
                          onPress: (){
                            userInput += '2' ;
                            setState(() {
                              
                            });
                          },
                          ),
                          MyButton(title: '3',
                          onPress: (){
                            userInput += '3' ;
                            setState(() {
                              
                            });
                          },
                          ),
                          MyButton(title: '+' ,
                          onPress: (){
                            userInput += '+' ;
                            setState(() {
                              
                            });
                          },
                          color: Colors.orange,),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          MyButton(title: '0',
                          onPress: (){
                            userInput += '0' ;
                            setState(() {
                              
                            });
                          }
                          ),
                          MyButton(title: '.',
                          onPress: (){
                            userInput += '.' ;
                            setState(() {
                              
                            });
                          },
                          ),
                          MyButton(title: 'DEL',
                          onPress: (){
                            if (userInput.isNotEmpty) {
                            userInput = userInput.substring(0, userInput.length -1 );
                            }
                            setState(() {
                             
                            });
                          },
                          ),
                          MyButton(title: '=' ,
                          onPress: (){
                            equalPress();
                            setState(() {
                              
                            });
                          },
                          color: Colors.orange,),
                        ],
                      ),
                    ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ) 
        )
      );
  }

void equalPress (){
  String finalUserInput = userInput ;
  finalUserInput = userInput.replaceAll('x', '*') ; 
  Parser p = Parser () ;
  Expression expression = p.parse(finalUserInput);
  ContextModel contextModel = ContextModel();
  double eval = expression.evaluate(EvaluationType.REAL, contextModel);
  answer = eval.toString();
}

} 