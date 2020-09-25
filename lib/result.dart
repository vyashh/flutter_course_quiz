import "package:flutter/material.dart";

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    var resultText;

    if (resultScore <= 8) {
      resultText = 'You are cool!';
    } else if (resultScore <= 12) {
      resultText = "You're okay";
    } else if (resultScore <= 16) {
      resultText = "Hmm you are a strange person...";
    } else {
      resultText = "You're so bad";
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Text(
          resultPhrase,
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        FlatButton(
          onPressed: resetHandler,
          child: Text('Restart Quiz!'),
          textColor: Colors.blue,
        )
      ],
    ));
  }
}
