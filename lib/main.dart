import 'package:flutter/material.dart';
import 'package:quiz_app/start_screem.dart';
void main() {
  runApp( MaterialApp(
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
          child: StartScreen(),
        ),
      ),
    ),
  );
}

