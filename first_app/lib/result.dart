import 'package:flutter/material.dart';

class Result extends StatelessWidget {

  final int resScore;
  final VoidCallback resetQuiz;

  Result(this.resScore,this.resetQuiz);

  String _getResultComment(int score) {

      String comment = "";

      if (score < 100) {
        comment = "you are very good";
      }
      else {
        comment = "you\'re excellent";
      }
      return comment;
  }
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(child: Text(_getResultComment(resScore),style: TextStyle(fontWeight: FontWeight.bold),)),
        TextButton(onPressed: resetQuiz, child: Text("Reset Quiz",style: TextStyle(color: Colors.blueAccent),))
      ],
    );
  }
}