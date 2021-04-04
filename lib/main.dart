import 'package:flutter/material.dart';
import 'Answer.dart';
import 'question.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyappState();
  }
}

class MyappState extends State<Myapp> {
  static final questions = const [
    {
      'QuestionText': "Who is the president of India",
      'AnswerText': ["Modi", "Gandhi", "None of the above"]
    },
    {
      'QuestionText': "Who is the president of UK",
      'AnswerText': ["Boris Jhonson", "Narandra Modi", "None of the above"]
    },
    {
      'QuestionText': "Who is the president of USA",
      'AnswerText': ["Clinton", "Jho Biden", "None of the above"]
    }
  ];
  int questionCount = 0;

  void changeQuestion() {
    setState(() {
      questionCount++;
    });
    if (questionCount < questions.length) {
      print("We have more Questions");
    } else {
      print("No more Questions");
    }
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Quizler",
            style: TextStyle(
              color: Colors.blue[900],
              fontSize: 45,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          backgroundColor: Colors.green[200],
        ),
        body: questionCount < questions.length
            ? Column(
                children: [
                  Question(questions[questionCount]['QuestionText']),
                  ...(questions[questionCount]['AnswerText'] as List<String>)
                      .map((AnswerText) {
                    return Answer(changeQuestion, AnswerText);
                  }).toList()
                ],
              )
            : Center(child: Text("You did it")),
      ),
    );
  }
}
