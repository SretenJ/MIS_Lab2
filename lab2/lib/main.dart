import 'package:flutter/material.dart';
import 'package:lab2/widget/clothing_answer.dart';
import 'package:lab2/widget/clothing_question.dart';

import 'models/question.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  void _iWasTapped() {
    setState(() {
      _questionIndex += 1;
    });
    print('I was tapped');
  }

  var questions = [
    Question(
      questionText: "Select type of shirt",
      answers: [
        'Blouse',
        'Shirt',
        'T-shirt',
      ],
    ),
    Question(
      questionText: "Select type of pants",
      answers: [
        'Jeans',
        'Baggy pants',
        'Shorts',
      ],
    ),
    Question(
      questionText: "Select type of shoes",
      answers: [
        'Boots',
        'Sport shoes',
        'Sneakers',
      ],
    ),
  ];
  var _questionIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "191279 Lab 2",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Lab 2"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ClothinQuestion(questions[_questionIndex].questionText),
            ...(questions[_questionIndex].answers).map((answer) {
              return ClothingAnswer(answer, _iWasTapped);
            })
          ],
        ),
      ),
    );
  }
}
