import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class YTsolved1 extends StatefulWidget {
  const YTsolved1() : super();

  @override
  _YTsolved1State createState() => _YTsolved1State();
}

class _YTsolved1State extends State<YTsolved1> {
  var myController = TextEditingController();
  var enteredNumber = 0;

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  var seed = Random(DateTime.now().millisecondsSinceEpoch).nextInt(100);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          upString(),
          myTextField(),
          checkBottom(),
        ],
      ),
    );
  }

  @override
  Widget myTextField() {
    return Container(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: myController,
              decoration: InputDecoration(
                  labelText: "Вгaдай число в діапазоні з 1 до 1000",
                  hintText: 'Ввод числа'),
              keyboardType: TextInputType.number,
            ),
          ],
        ));
  }

  @override
  Widget checkBottom() {
    return Center(
      child: InkWell(
        onTap: parseCurrentText,
        child: Text("Перевірка", style: TextStyle(fontSize: 15)),
      ),
    );
  }

  Widget upString() {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(checkWinningText()),
        ]);
  }

  void parseCurrentText() {
    setState(() {
      var parsedNumber = int.tryParse(myController.text);
      if (parsedNumber != null) enteredNumber = parsedNumber;
    });
  }

  String checkWinningText() {
    while (enteredNumber > seed) {
      return ("Ви ввели число яке більш");
    }
    while (enteredNumber < seed) {
      return ("Ви ввели число яке меншк");
    }
    while (enteredNumber == seed) {
      return ("ЄЄЄЄЄЄ ти бля чортовий переможець");
    }
    return ("hhhhhh");
  }
}
