import 'package:flutter/material.dart';
import 'package:quiz_app/start_screem.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/results_screen.dart';
class Quiz extends StatefulWidget{
  const Quiz({super.key});
  @override
  State<Quiz> createState(){
    return _QuizState();
  }
}

class _QuizState extends State<Quiz>{
  List<String> selectedAnswers=[];
  var activeScreen='Start-Screen';

  void switchScreen(){
    setState(() {
      activeScreen='Question-Screen';
    });
  }

  void chooseAnswer(String answer)
  {
    selectedAnswers.add(answer);
    if(selectedAnswers.length==questions.length)
      {
        setState(() {

          activeScreen='results-Screen';
        });
      }
  }

  void restartQuiz(){
    setState(() {
      selectedAnswers=[];
      activeScreen='questions-screen';
    });
  }

  @override
  Widget build(context){
    Widget ScreenWidget=StartScreen(switchScreen);

    if(activeScreen=='Question-Screen')
    {
      ScreenWidget= QuestionsScreen(onSelectAnswer:chooseAnswer);
    }
    if(activeScreen=='results-Screen')
    {
      ScreenWidget=  ResultsScreen(chosenAnswers: selectedAnswers,onRestart: restartQuiz,);
    }
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
          child: ScreenWidget,
        ),
      ),
    );
  }
}