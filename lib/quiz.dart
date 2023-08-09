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
  Widget? activeScreen;
  @override
  void initState() {
    activeScreen=StartScreen(switchScreen);
    super.initState();
  }
  void switchScreen(){
    setState(() {
      activeScreen=const QuestionsScreen();
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
          child: activeScreen,
        ),
      ),
    );
  }
}