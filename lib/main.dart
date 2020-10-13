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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 7),
            child: RaisedButton(
              color: Colors.white,
              onPressed: () {},
              child: Container(
                height: 55,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(
                      'https://lh3.googleusercontent.com/proxy/2BgI0A6LDj1q7r7UK8jZBc-AWd_4CHijzUnMLqAIfwgqLlhe8tIV9l1-y89DmxUVl6Cve0epQNFcz00btZaKEMers2s45Xaw-YWmtQGN_jaot_0YpVY',
                      height: 20,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text("Signin with Google")
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 7),
            child: RaisedButton(
              color: Colors.blue,
              onPressed: () {},
              child: Container(
                height: 55,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(
                      'https://cdn.iconscout.com/icon/free/png-512/facebook-logo-2019-1597680-1350125.png',
                      height: 20,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "Signin with FaceBook",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 7),
            child: RaisedButton(
              color: Colors.greenAccent,
              onPressed: () {},
              child: Container(
                height: 55,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Signin with Emai and Password",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
            ),
          ),
          Text("or"),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 7),
            child: RaisedButton(
              color: Colors.yellow[100],
              onPressed: () {},
              child: Container(
                height: 55,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Text("Go anonymous")],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
