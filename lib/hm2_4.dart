import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HM2_4 extends StatefulWidget {
  const HM2_4({Key key}) : super(key: key);

  @override
  _HM1State createState() => _HM1State();
}

class _HM1State extends State<HM2_4> {
  var counter = 0;
  var lastOperation = "No operation";
  var isVerticalHistoryOrientation = true;
  var history = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(top: 16),
              child: Text(counter.toString()),
            ),
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
                Container(
                  height: 224,
                  margin: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black.withOpacity(0.2)),
                      borderRadius: BorderRadius.all(Radius.circular(2))),
                  child: ListView(
                    scrollDirection: isVerticalHistoryOrientation
                        ? Axis.vertical
                        : Axis.horizontal,
                    padding:
                        EdgeInsets.only(left: 4, right: 4, top: 16, bottom: 16),
                    children: history
                        .map((e) => Container(

                              decoration: BoxDecoration(
                                  color: Colors.green.withOpacity(0.1),
                                  border: Border.all(color: Colors.black26),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(16))),
                              margin: EdgeInsets.all(8),
                              padding: EdgeInsets.all(32),
                              child: Center(child: Text(e),),
                            ))
                        .toList(),
                  ),
                ),
                Text(
                  "History preview type",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14),
                ),
                SizedBox(height: 16,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      child: Card(
                        color: isVerticalHistoryOrientation
                            ? Colors.lightBlue.withOpacity(0.5)
                            : Colors.white,
                        child: Container(
                          width: 96,
                          child: Center(
                            child: Text(
                              "Vertical",
                            ),
                          ),
                          margin: EdgeInsets.all(16),
                        ),
                      ),
                      onTap: () {
                        setState(() {
                          isVerticalHistoryOrientation = true;
                        });
                      },
                    ),
                    InkWell(
                      child: Card(
                        color: !isVerticalHistoryOrientation
                            ? Colors.lightBlue.withOpacity(0.5)
                            : Colors.white,
                        child: Container(
                          width: 96,
                          child: Center(
                              child: Text(
                            "Horizontal",
                          )),
                          margin: EdgeInsets.all(16),
                        ),
                      ),
                      onTap: () {
                        setState(() {
                          isVerticalHistoryOrientation = false;
                        });
                      },
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      )),
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
