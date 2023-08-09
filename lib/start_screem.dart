import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class StartScreen extends StatelessWidget{
  const StartScreen({super.key});

  @override
  Widget build(context)
  {
    return Center(
      child:Column(
        mainAxisSize: MainAxisSize.min ,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(132, 250, 250, 250),
          ),
          // Opacity(
          //   opacity:0.5,
          //   child:Image.asset(
          //   'assets/images/quiz-logo.png',
          //     width: 300,
          //   ),
          // ),
          const SizedBox(height: 80,),
          const Text(
            'Learning Flutter is fun',
            style: TextStyle(
              color: Color.fromARGB(255, 196, 30, 113),
              fontSize: 24,
              fontStyle: FontStyle.italic
            ),
          ),
            const SizedBox(height: 80,),
          ElevatedButton.icon(onPressed: (){},
              style:ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 92, 225, 15),
                  foregroundColor:const Color.fromARGB(
              255, 253, 14, 14)
              ),
              icon: const Icon(Icons.not_started_outlined),
              label: const Text('Start Quiz')),
        ],
      ),
    );
  }
}