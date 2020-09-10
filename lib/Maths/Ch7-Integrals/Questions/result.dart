import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final Function resetHandler;

  Result(this.resetHandler);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          FlatButton(
            child: Text(
              'Restart Quiz!',
            ),
            textColor: Colors.blue,
            onPressed: resetHandler,
          ),
        ],
      ),
    );
  }
}
