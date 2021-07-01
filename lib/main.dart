import 'package:flutter/material.dart';

import 'hm1.dart';
import 'hm1_1.dart';
import 'hm2.dart';
import 'hm2_1.dart';
import 'hm2_1_1.dart';
import 'hm2_2.dart';
import 'hm2_3.dart';
import 'hm2_4.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HM211(),
    );
  }
}

