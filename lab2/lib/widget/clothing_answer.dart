import 'package:flutter/material.dart';

class ClothingAnswer extends StatelessWidget {
  final String _answerText;
  final VoidCallback _tapped;

  const ClothingAnswer(this._answerText, this._tapped, {super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: _tapped,
        style: const ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(Colors.green),
        ),
        child: Text(_answerText,
            style: const TextStyle(
              fontSize: 20,
              color: Colors.red,
            )));
  }
}
