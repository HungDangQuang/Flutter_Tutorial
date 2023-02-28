import './result.dart';
import './quiz.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State{

  int _index = 0;
  int _score = 0;

  var _questions = [
    {
      'questionText':'Grade your understanding',
      'answers':[{'text':'understand','score':60},{'text':'excellent','score':100},{'text':'very good','score':100}],
    },

    {
      'questionText':'Grade your performance',
      'answers':[{'text':'outstanding','score':100},{'text':"normal",'score':50},{'text':'bad','score':30}],
    },

    {
      'questionText':'Show your love',
      'answers':[{'text':'wonderful','score':100},{'text':'happy','score':80},{'text':'awful','score':50}],
    },

  ];

   void answerQuestion(int score){
    setState(() {
      _index++;
      _score++;
    });
  }

  void resetQuiz(){
    setState(() {
      _index = 0;
      _score = 0;
    });
  }



  @override
  Widget build(BuildContext context) {


    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My first app"),
        ),
        body: _index < _questions.length ? Quiz(_questions,_index,() => answerQuestion(_score)) : Result(_score,resetQuiz)
      ),
    );
  }
}