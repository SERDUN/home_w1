import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HM2_1 extends StatefulWidget {
  const HM2_1({Key key}) : super(key: key);

  @override
  _HM1State createState() => _HM1State();
}

class _HM1State extends State<HM2_1> {
  var counter = 0;
  var lastOperation = "No operation";
  var history = [];

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
          controller(),
          Divider(
            color: Colors.grey.withOpacity(0.2),
            thickness: 1,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Last operation: ",
                style: TextStyle(color: Colors.grey),
              ),
              Text(lastOperation),
            ],
          ),
          Divider(
            color: Colors.grey.withOpacity(0.2),
            thickness: 1,
          ),
          Column(
            children: [
              Text(
                "History",
                style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.w900,
                    fontSize: 19),
              ),
              Container(
                width: 80,
                height: 1,
                color: Colors.red,
                margin: EdgeInsets.only(top: 8),
              ),
              Column(
                children: history
                    .map((e) => Container(
                  margin: EdgeInsets.all(8),
                          child: Text(e),
                        ))
                    .toList(),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget controller() {
    return Column(
      children: [
        Row(
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
        ),
        InkWell(
          child: Container(
            width: 96,
            margin: EdgeInsets.only(top: 8),
            color: Colors.black,
            padding: EdgeInsets.all(8),
            child: Center(
              child: Text(
                "Clear",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          onTap: clear,
        )
      ],
    );
  }

  void incrementCounter() {
    setState(() {
      lastOperation = "Increment";
      counter++;
      history.add(
          "Operation: " + lastOperation + " Result: " + counter.toString());
    });
  }

  void clear() {
    setState(() {
      counter = 0;
      lastOperation = "Cleared";
      history.clear();
    });
  }

  void decrementCounter() {
    setState(() {
      lastOperation = "Decrement";
      counter--;
      history.add(
          "Operation: " + lastOperation + " Result: " + counter.toString());
    });
  }
}
