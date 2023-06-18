// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:quiz_app/quiz.dart';
import 'package:quiz_app/result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  //List of questions
  final questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 1},
        {'text': 'White', 'score': 2}
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 5},
        {'text': 'Snake', 'score': 1},
        {'text': 'Elephant', 'score': 10},
        {'text': 'Lion', 'score': 5}
      ],
    },
    {
      'questionText': 'Who\'s your favorite instructor?',
      'answers': [
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 3},
        {'text': 'Max', 'score': 2},
        {'text': 'Max', 'score': 5}
      ],
    }
  ];
  var questionIndex = 0;
  var _totalScore = 0;

  void answerQuestion(int score) {

    _totalScore += score;
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);

    if (questionIndex < questions.length) {
      print('We have more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.amberAccent,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Quiz App',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.amber,
        ),
        body: questionIndex < questions.length
            ? Quiz(
                questions: questions,
                answerQuestion: answerQuestion,
                questionIndex: questionIndex)
            : Result(_totalScore),
      ),
    );
  }
}
