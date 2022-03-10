import 'package:flutter/material.dart';
import 'package:flutter_guide/answer.dart';
import 'question.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter 1st project',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter 1st project'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var listcount = 0;
  List list = [
    {
      "questiontext": "what is your favorite colour?",
      "answertext": ["blue", "black", "pink", "orange"]
    },
    {
      "questiontext": "what is your favorite animal?",
      "answertext": ["lion", "tiger", "elephant", "panda"]
    },
    {
      "questiontext": "what is your favorite superhero?",
      "answertext": ["spiderman", "batman", "doremon", "ironman"]
    },
    {
      "questiontext": "what is your favorite mobile brand?",
      "answertext": ["oppo", "nokia", "iphone", "redmi"]
    },
    {
      "questiontext": "what is your favorite programming language?",
      "answertext": ["c++", "java", "dart", "python"]
    },
  ];
  void answeredQuestion() {
    setState(() {
     // for (listcount= 0; listcount <= 3; listcount++);
     //listcount = listcount + 1;
      (listcount <= 3)
          ? {listcount = listcount + 1}
          : {listcount = listcount - 3};
    });
    print(listcount);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Question(list[listcount]["questiontext"]),
            ...(list[listcount]["answertext"]).map((answer) {
              print(answer);
              return Answer(answeredQuestion, answer);

            }),
          ],
        ),
      ),
    );
  }
}
