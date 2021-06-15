import 'package:flutter/material.dart';
import 'package:quizapp/answer.dart';
import 'question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _question = const [
    {
      'questionsText': 'i am karttyuiij jj?',
      'answer': [
        {'text': 'i', 'score': 10},
        {'text': 'q', 'score': 8},
        {'text': 'e', 'score': 5},
        {'text': 'r', 'score': 3},
      ],
    },
    {
      'questionsText': 'dssssssssd dfs?',
      'answer': [
        {'text': 'dfsdf', 'score': 10},
        {'text': 'dswq', 'score': 8},
        {'text': 'sfdwse', 'score': 5},
        {'text': 'fe', 'score': 3},
      ],
    },
    {
      'questionsText': 'u are kartik b cd?',
      'answer': [
        {'text': 'isdfs', 'score': 10},
        {'text': 'qsds', 'score': 8},
        {'text': 'esdd', 'score': 5},
        {'text': 'hh', 'score': 3},
      ],
    },
    {
      'questionsText': 'i am kartik patel andf?',
      'answer': [
        {'text': 'tt', 'score': 10},
        {'text': 'kk', 'score': 8},
        {'text': 'hh', 'score': 5},
        {'text': 'rhh', 'score': 3},
      ],
    },
  ];

  var _questionIndex = 0;
  var _totleSore = 0;

  void _nextQuest(int score) {
    setState(() {
      _questionIndex++;
      _totleSore += score;
    });
  }

  void _reset() {
    setState(() {
      _questionIndex = 0;
      _totleSore = 0;
    });
  }

  String get _result {
    var resultText;
    if (_totleSore <= 15) {
      resultText = 'keep hart working!';
    } else {
      resultText = 'great keep at up!!';
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("quiz app"),
          ),
          body: _questionIndex < _question.length
              ? Column(
                  children: [
                    Question(_question[_questionIndex]['questionsText']
                            ?.toString() ??
                        ''),
                    ...(_question[_questionIndex]['answer']
                            as List<Map<String, dynamic>>)
                        .map((answer) {
                      return Answer(answer['text'].toString(),
                          () => _nextQuest(answer['score']));
                    }).toList()
                  ],
                )
              : Column(
                  children: [
                    Text(_result),
                    Center(
                      child: FloatingActionButton.extended(
                          onPressed: _reset, label: Text('Reset')),
                    ),
                  ],
                )),
    );
  }
}
