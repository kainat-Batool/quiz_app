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
    },
    {
      'questionText': 'What is your favorite food?',
      'answers': [
        {'text': 'Pizza', 'score': 10},
        {'text': 'Sushi', 'score': 8},
        {'text': 'Burger', 'score': 6},
        {'text': 'Pasta', 'score': 7}
      ]
    },
    {
      'questionText': 'Which is your favorite season?',
      'answers': [
        {'text': 'Spring', 'score': 8},
        {'text': 'Summer', 'score': 10},
        {'text': 'Autumn', 'score': 6},
        {'text': 'Winter', 'score': 7}
      ]
    },
    {
      'questionText': 'What is your favorite book genre?',
      'answers': [
        {'text': 'Mystery', 'score': 6},
        {'text': 'Fantasy', 'score': 8},
        {'text': 'Science Fiction', 'score': 10},
        {'text': 'Romance', 'score': 5}
      ]
    },
    {
      'questionText': 'Who is your favorite superhero?',
      'answers': [
        {'text': 'Iron Man', 'score': 8},
        {'text': 'Spider-Man', 'score': 10},
        {'text': 'Batman', 'score': 7},
        {'text': 'Superman', 'score': 6}
      ]
    },
    {
      'questionText': 'What is your favorite hobby?',
      'answers': [
        {'text': 'Reading', 'score': 8},
        {'text': 'Sports', 'score': 10},
        {'text': 'Painting', 'score': 6},
        {'text': 'Cooking', 'score': 7}
      ]
    },
    {
      'questionText': 'What is your favorite movie genre?',
      'answers': [
        {'text': 'Action', 'score': 8},
        {'text': 'Comedy', 'score': 9},
        {'text': 'Drama', 'score': 7},
        {'text': 'Thriller', 'score': 6}
      ]
    },
    {
      'questionText': 'Who is your favorite musician?',
      'answers': [
        {'text': 'Taylor Swift', 'score': 9},
        {'text': 'Ed Sheeran', 'score': 8},
        {'text': 'Beyoncé', 'score': 10},
        {'text': 'Drake', 'score': 7}
      ]
    },
    {
      'questionText': 'What is your favorite outdoor activity?',
      'answers': [
        {'text': 'Hiking', 'score': 10},
        {'text': 'Cycling', 'score': 8},
        {'text': 'Swimming', 'score': 7},
        {'text': 'Picnicking', 'score': 6}
      ]
    },
    {
      'questionText': 'Which is your favorite holiday destination?',
      'answers': [
        {'text': 'Beach resort', 'score': 9},
        {'text': 'Mountain retreat', 'score': 10},
        {'text': 'City exploration', 'score': 8},
        {'text': 'Countryside getaway', 'score': 7}
      ]
    },
    {
      'questionText': 'What is your favorite sport?',
      'answers': [
        {'text': 'Football', 'score': 10},
        {'text': 'Basketball', 'score': 9},
        {'text': 'Tennis', 'score': 8},
        {'text': 'Golf', 'score': 7}
      ]
    },
    {
      'questionText': 'What is your favorite drink?',
      'answers': [
        {'text': 'Coffee', 'score': 10},
        {'text': 'Tea', 'score': 9},
        {'text': 'Juice', 'score': 8},
        {'text': 'Soda', 'score': 7}
      ]
    },
    {
      'questionText': 'What is your favorite ice cream flavor?',
      'answers': [
        {'text': 'Chocolate', 'score': 10},
        {'text': 'Vanilla', 'score': 9},
        {'text': 'Strawberry', 'score': 8},
        {'text': 'Mint', 'score': 7}
      ]
    },
    {
      'questionText': 'What is your favorite social media platform?',
      'answers': [
        {'text': 'Facebook', 'score': 10},
        {'text': 'Instagram', 'score': 9},
        {'text': 'Twitter', 'score': 8},
        {'text': 'Snapchat', 'score': 7}
      ]
    },
    {
      'questionText': 'What is your favorite subject in school?',
      'answers': [
        {'text': 'Math', 'score': 10},
        {'text': 'Science', 'score': 9},
        {'text': 'English', 'score': 8},
        {'text': 'History', 'score': 7}
      ]
    },
    {
      'questionText': 'What is your favorite clothing item?',
      'answers': [
        {'text': 'Jeans', 'score': 10},
        {'text': 'T-shirt', 'score': 9},
        {'text': 'Sweater', 'score': 8},
        {'text': 'Dress', 'score': 7}
      ]
    },
    {
      'questionText': 'What is your favorite season?',
      'answers': [
        {'text': 'Spring', 'score': 10},
        {'text': 'Summer', 'score': 9},
        {'text': 'Autumn', 'score': 8},
        {'text': 'Winter', 'score': 7}
      ]
    },
    {
      'questionText': 'What is your favorite flower?',
      'answers': [
        {'text': 'Rose', 'score': 10},
        {'text': 'Lily', 'score': 9},
        {'text': 'Sunflower', 'score': 8},
        {'text': 'Tulip', 'score': 7},
      ]
    },
  ];
  var questionIndex = 0;
  var _totalScore = 0;

  void resetQuiz() {
    setState(() {
      questionIndex = 0;
      _totalScore = 0;
    });
  }

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
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Color(0xFFF8DAE4),
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              'Quiz App',
              style: TextStyle(color: Colors.black),
            ),
            backgroundColor: Color(0xffB4909C),
          ),
          body: questionIndex < questions.length
              ? Quiz(
                  questions: questions,
                  answerQuestion: answerQuestion,
                  questionIndex: questionIndex)
              : Result(_totalScore, resetQuiz),
        ),
      ),
    );
  }
}
