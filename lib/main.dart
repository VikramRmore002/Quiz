import 'package:flutter/material.dart';
import 'package:flutter_guide/answer.dart';
import 'package:flutter_guide/quiz.dart';
import 'question.dart';
import 'result.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter 1st project',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var listcount = 0;
  var totalscore = 0;
  List list = [
    {
      "questiontext": "what is your favorite colour?",
      "answertext": [
        {"answerchosen": "blue", "score": 3},
        {"answerchosen": "black", "score": 1},
        {"answerchosen": "pink", "score": 6},
        {"answerchosen": "orange", "score": 5}
      ]
    },
    {
      "questiontext": "what is your favorite animal?",
      "answertext": [
        {"answerchosen": "lion", "score": 8},
        {"answerchosen": "tiger", "score": 9},
        {"answerchosen": "elephant", "score": 2},
        {"answerchosen": "panda", "score": 3}
      ]
    },
    {
      "questiontext": "what is your favorite superhero?",
      "answertext": [
        {"answerchosen": "spiderman", "score": 4},
        {"answerchosen": "batman", "score": 5},
        {"answerchosen": "thanos", "score": 1},
        {"answerchosen": "ironman", "score": 9}
      ]
    },
    {
      "questiontext": "what is your favorite mobile brand?",
      "answertext": [
        {"answerchosen": "oppo", "score": 5},
        {"answerchosen": "nokia", "score": 1},
        {"answerchosen": "iphone", "score": 9},
        {"answerchosen": "redmi", "score": 7}
      ]
    },
    {
      "questiontext": "what is your favorite programming language?",
      "answertext": [
        {"answerchosen": "c++", "score": 1},
        {"answerchosen": "java", "score": 6},
        {"answerchosen": "dart", "score": 9},
        {"answerchosen": "python", "score": 7}
      ]
    },
  ];


  void answeredQuestion(int score) {
    totalscore += score;
    setState(() {
      listcount = listcount+1;
      // (listcount <= 3)
      //     ? {listcount = listcount + 1}
      //     : {listcount = listcount - 3};
    });
    print(listcount);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Quiz test "),
      ),
      body: Center(
          child: listcount < list.length
          ? Quiz(
        listcount: listcount,
        answeredQuestion: answeredQuestion,
        list: list,
      )
            :  Result (resetgame: reserGame,resultScore: totalscore),
      ),
    );

  }

 void  reserGame() {
    setState(() {
      listcount = 0;
      totalscore = 0;
    });
  }
}
