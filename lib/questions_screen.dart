import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/questions.dart';

class QuestionsScreen extends StatefulWidget{
  const QuestionsScreen({super.key});
  @override
  State<QuestionsScreen> createState(){
    return _QuestionsScreenState();
  }
}
class _QuestionsScreenState extends State<QuestionsScreen>{
  @override
  Widget build(context){
    final currentQuestion=questions[0];
    return   SizedBox(
      width: double.infinity,
      child: Container(
        margin:const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              currentQuestion.text,
              style: const TextStyle(
                color: Color.fromARGB(255, 244, 248, 248),
                fontSize: 30,
              ),
            ),
            const SizedBox(height: 30,),
            ...currentQuestion.getShuffledList().map((answer){
              return  AnswerButton(answerText: answer,onTap:(){},);
            })
          ],
        ),
      ),
    );
  }
}