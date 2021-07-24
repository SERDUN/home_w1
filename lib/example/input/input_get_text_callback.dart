import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class InputGetTextCallback extends StatefulWidget {
  const InputGetTextCallback() : super();

  @override
  _InputGetTextCallbackState createState() => _InputGetTextCallbackState();
}

class _InputGetTextCallbackState extends State<InputGetTextCallback> {
  String _textBuffer = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Твій текст: " + _textBuffer),
            TextField(
              onChanged: (text) {
                setState(() {
                  _textBuffer=text;
                });
              },
            )
          ],

      ),
    );
  }
}
