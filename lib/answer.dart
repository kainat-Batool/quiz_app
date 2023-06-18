import 'package:flutter/material.dart';

class Answer extends StatefulWidget {
  final Function selectHandler;
  final String answerText;
  Answer(
    this.selectHandler,
    this.answerText,
  );

  @override
  State<Answer> createState() => _AnswerState();
}

class _AnswerState extends State<Answer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.2,
      margin: EdgeInsets.all(10),
      child: ElevatedButton(
        child: Text(widget.answerText),
        onPressed: () {
          widget.selectHandler();
        },
      ),
    );
  }
}
