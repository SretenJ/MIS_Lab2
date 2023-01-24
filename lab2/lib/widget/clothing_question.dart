import 'package:flutter/material.dart';

class ClothinQuestion extends StatelessWidget {
  final String _questionContent;
  const ClothinQuestion(this._questionContent, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(5),
      child: Text(
        _questionContent,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 20,
          color: Colors.blue,
        ),
      ),
    );
  }
}
