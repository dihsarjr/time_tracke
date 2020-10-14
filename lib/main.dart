import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:time_tracker/signin.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.amber),
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}
