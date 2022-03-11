import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerstring;

  Answer(this.selectHandler, this.answerstring);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: RaisedButton(
          color: Colors.blue,
          textColor: Colors.white,
          child: Text(answerstring),
          onPressed: selectHandler,
        ),
      ),
    );
  }
}

