import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HM1 extends StatefulWidget {
  const HM1({Key key}) : super(key: key);

  @override
  _HM1State createState() => _HM1State();
}

class _HM1State extends State<HM1> {
  var counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(counter.toString()),
          Divider(
            color: Colors.grey.withOpacity(0.2),
            thickness: 1,
          ),
          controller()
        ],
      ),
    );
  }

  Widget controller() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        InkWell(
          child: Container(
            color: Colors.green,
            padding: EdgeInsets.all(8),
            child: Icon(Icons.add),
          ),
          onTap: incrementCounter,
        ),
        SizedBox(
          width: 16,
        ),
        InkWell(
          child: Container(
            color: Colors.red,
            padding: EdgeInsets.all(8),
            child: Icon(Icons.arrow_right_alt_rounded),
          ),
          onTap: decrementCounter,
        )
      ],
    );
  }

  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  void decrementCounter() {
    setState(() {
      counter--;
    });
  }
}
