import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HM211 extends StatefulWidget {
  const HM211({Key key}) : super(key: key);

  @override
  _HM1State createState() => _HM1State();
}

class _HM1State extends State<HM211> {
  var counter1 = 0;
  var counter2 = 0;
  var counter3 = 0;

  var lastOperation = "No operation";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(counter1.toString()),
              Container(
                width: 1,
                margin: EdgeInsets.only(left: 16, right: 16),
                height: 16,
                color: Colors.black87,
              ),
              Text(counter2.toString()),
              Container(
                margin: EdgeInsets.only(left: 16, right: 16),
                width: 1,
                height: 16,
                color: Colors.black87,
              ),
              Text(counter3.toString()),
            ],
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
                child: Text("1"),
              ),
              onTap: addToColumn1,
            ),
            SizedBox(
              width: 16,
            ),
            InkWell(
              child: Container(
                color: Colors.red,
                padding: EdgeInsets.all(8),
                child: Text("2"),
              ),
              onTap: addToColumn2,
            ),
            SizedBox(
              width: 16,
            ),
            InkWell(
              child: Container(
                color: Colors.brown,
                padding: EdgeInsets.all(8),
                child: Text("3"),
              ),
              onTap: addToColumn3,
            )
          ],
        ),

      ],
    );
  }

  void addToColumn1() {
    setState(() {
      lastOperation = "+1";
      counter1=counter1+1;
      //  counter++;
    });
  }

  void addToColumn2() {
    setState(() {
      lastOperation = "+2";
      counter2=counter2+2;

      //  counter++;
    });
  }

  void addToColumn3() {
    setState(() {
      lastOperation = "+3";
      counter3=counter3+3;

      //  counter++;
    });
  }
}
