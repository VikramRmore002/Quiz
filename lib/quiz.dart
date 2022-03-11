import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  final List<dynamic> list;
  final int listcount;
  final Function answeredQuestion;
  Quiz(
      {@required this.list,
      @required this.listcount,
      @required this.answeredQuestion});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Question(list[listcount]["questiontext"]),
          SizedBox ( ),
          ...(list[listcount]["answertext"] as List<dynamic>)
              .map((answer) {
            print(answer);
            return Answer(
                () => answeredQuestion(answer["score"]), answer["answerchosen"]);
          }),
        ],
      ),
    );
  }
}
