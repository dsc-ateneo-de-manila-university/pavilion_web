import 'package:flutter/material.dart';
import 'package:pavilion_web/screens/main.dart';

import 'package:pavilion_web/models/user.dart';

class LoginScreen extends StatefulWidget {
  static const String route = '/';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isUserSignedIn = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        padding: const EdgeInsets.symmetric(vertical: 150.0),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Image.asset('assets/images/logo.png'),
                  Text(
                    "pavilion",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 56.0,
                        color: const Color(0xff295EFF)),
                  )
                ],
              ),
              Column(
                children: <Widget>[
                  FlatButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      onPressed: () {
                        // onGoogleSignIn(context);
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MainScreen()),
                        );
                        setState(() {
                          firstName = "Atenean";
                          email = "";
                          imageUrl = "";
                          displayName = "Guest";
                        });
                      },
                      color: const Color(0xff295EFF),
                      child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('Sign in with Google',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.bold)))),
                  Padding(
                      padding: const EdgeInsets.only(top: 16.0),
                      child: GestureDetector(
                        child: Text("Continue offline",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: const Color(0xff1C41B2),
                                fontSize: 16.0)),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MainScreen()),
                          );
                          setState(() {
                            firstName = "Atenean";
                            email = "";
                            imageUrl = "";
                            displayName = "Guest";
                          });
                        },
                      ))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
