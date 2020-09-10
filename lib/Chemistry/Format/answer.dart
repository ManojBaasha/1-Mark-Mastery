import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        color: Colors.blue,
        onPressed: selectHandler,
        child: Text(
          answerText,
          style: TextStyle(
              fontFamily: 'Montserrat', color: Colors.white, fontSize: 25.0),
        ),
      ),
    );
  }
}
