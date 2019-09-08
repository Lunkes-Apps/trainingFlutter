import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  static const questions = [
    {
      'questionText': 'What\' s your favorite Color?',
      'answers': ['Black', 'Red', 'Green', 'White'],
    },
    {
      'questionText': 'What\' s your favorite Animal?',
      'answers': ['Elephant', 'Rabbit', 'Snake', 'Lion'],
    },
    {
      'questionText': 'What\' s your favorite Course?',
      'answers': ['Java', 'Ruby', 'Sql', 'Flutter'],
    }
  ];

  var _questionIndex = 0;

  @override
  Widget build(BuildContext context) {
    void _answerQuestion() {
      if (_questionIndex < questions.length) {
        setState(() {
          _questionIndex++;
        });
      }

      // questionIndex++;
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < questions.length
            ? Column(
                children: [
                  Question(
                    questions[_questionIndex]['questionText'],
                  ),
                  ...(questions[_questionIndex]['answers'] as List<String>)
                      .map((answer) {
                    return Answer(_answerQuestion, answer);
                  }).toList()
                ],
              )
            : Center(
                child: Text('You did it '),
              ),
      ),
    );
  }
}
