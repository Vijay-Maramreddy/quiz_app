import 'package:flutter/material.dart';
import 'package:quiz_app/questions_screen.dart';
class AnswerButton extends StatelessWidget{
  const AnswerButton({required this.answerText, required this.onTap,super.key});
  final String  answerText;
  final void Function()  onTap;
  @override
  Widget build(context){
    return ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          padding:const  EdgeInsets.all(20),
          backgroundColor: const Color.fromARGB(255, 57, 110, 208),
          foregroundColor: Colors.white,
          fixedSize: const Size.fromWidth(400),
        ),
        child: Text(answerText),
    );
  }
}