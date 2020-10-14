import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  void _signInAnonymously() async {
    final authResponce = await FirebaseAuth.instance.signInAnonymously();

    print(authResponce.user.uid);
  }

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
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              color: Colors.white,
              onPressed: () {},
              child: Container(
                height: 55,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(
                      'https://www.freepnglogos.com/uploads/google-logo-png/google-logo-png-suite-everything-you-need-know-about-google-newest-0.png',
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
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
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
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
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
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              color: Colors.yellow[100],
              onPressed: _signInAnonymously,
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
