import 'package:flutter/material.dart';
import 'package:quiz_app/start_screem.dart';
import 'package:quiz_app/questions_screen.dart';
class Quiz extends StatefulWidget{
  const Quiz({super.key});
  @override
  State<Quiz> createState(){
    return _QuizState();
  }
}

class _QuizState extends State<Quiz>{
  var activeScreen='Start-Screen';

  void switchScreen(){
    setState(() {
      activeScreen='Qusetion-Screen';
    });
  }
  @override
  Widget build(context){
    return MaterialApp(
      home:Scaffold(
        body: Container(
          decoration:const BoxDecoration(
            gradient: LinearGradient(
              colors:[
                Color.fromARGB(255, 12, 20, 119),
                Color.fromARGB(255, 14, 83, 211),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: activeScreen=='Start-Screen'?StartScreen(switchScreen):const QuestionsScreen(),
        ),
      ),
    );
  }
}