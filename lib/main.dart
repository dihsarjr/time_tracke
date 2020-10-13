import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Time Tracker',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Sign in",
            style: TextStyle(
                color: Colors.amber, fontSize: 25, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 7),
            color: Colors.black26,
            height: 50,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 7),
            color: Colors.black26,
            height: 50,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 7),
            color: Colors.black26,
            height: 50,
          ),
          Text("or"),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            color: Colors.black26,
            height: 50,
          ),
        ],
      ),
    );
  }
}
