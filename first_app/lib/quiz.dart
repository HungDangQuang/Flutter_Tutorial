import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {

  final List _questions;
  final int _index;
  final VoidCallback answerQuestion;

  const Quiz(this._questions,this._index,this.answerQuestion);

  @override
  Widget build(BuildContext context) {
    return Column(
          children: [
            Question(
              _questions[_index]['questionText'] as String,
            ),

            ...(_questions[_index]['answers'] as List<Map<String,Object>>).map((ans){
              return Answer(answerQuestion, ans['text'] as String);
            }).toList(),
          ],
        );
  }
}