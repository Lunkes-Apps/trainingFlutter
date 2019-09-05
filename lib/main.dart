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

  var _questionIndex = 0;
  
  @override
  Widget build(BuildContext context) {
    

    void _answerQuestion() {
      setState(() {
        _questionIndex++;
      });
      // questionIndex++;
    }

    var _questions = [
      'What\' s yout favorite Color?',
      'What\' s yout favorite Animal?',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Question(
              _questions[_questionIndex],
            ),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
          ],
        ),
      ),
    );
  }
}
