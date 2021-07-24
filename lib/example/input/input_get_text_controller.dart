import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class InputGetTextController extends StatefulWidget {
  const InputGetTextController() : super();

  @override
  _InputGetTextCallbackState createState() => _InputGetTextCallbackState();
}

class _InputGetTextCallbackState extends State<InputGetTextController> {

  TextEditingController _textEditingController=TextEditingController();
  @override
  void initState() {
    _textEditingController.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Твій текст: " + _textEditingController.text),
            TextField(
              controller: _textEditingController,
            )
          ],

      ),
    );
  }
}
