import 'package:flutter/material.dart';
import 'package:pavilion_web/screens/main.dart';
import 'package:pavilion_web/models/user.dart';
import 'package:pavilion_web/models/screen.dart';
import 'package:pavilion_web/models/user.dart';

class TrackerScreen extends StatefulWidget {
  @override
  _TrackerScreenState createState() => _TrackerScreenState();
}

class _TrackerScreenState extends State<TrackerScreen> {
  bool isUserSignedIn = false;
  bool maintenance = true;
  int contentState = 0;

  @override
  void initState() {
    contentState = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        padding: imageUrl == "" || maintenance
            ? const EdgeInsets.symmetric(vertical: 30, horizontal: 60)
            : null,
        child: imageUrl == ""
            ? Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                    Text(
                        "Sorry this feature is unavailable for users using a browser",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: const Color(0xff295EFF),
                            fontSize: 24,
                            fontWeight: FontWeight.bold)),
                    Container(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        child: Image.asset('assets/images/maintenance.png')),
                    Text(
                        "Please download our apps in App Store and Play Store instead!",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: const Color(0xff000000),
                          fontSize: 16,
                        ))
                  ])
            : maintenance
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                        Text("This page is under maintenance...",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: const Color(0xff295EFF),
                                fontSize: 24,
                                fontWeight: FontWeight.bold)),
                        Container(
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            child:
                                Image.asset('assets/images/maintenance.png')),
                        Text("Coming soon!",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: const Color(0xff295EFF),
                                fontSize: 24,
                                fontWeight: FontWeight.bold))
                      ])
                : Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 16.0, horizontal: 50.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            new GestureDetector(
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 24.0, horizontal: 8.0),
                                decoration: BoxDecoration(
                                  color: contentState == 0
                                      ? const Color.fromRGBO(41, 94, 255, 0.15)
                                      : Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Column(
                                  children: <Widget>[
                                    SizedBox(
                                      child:
                                          Image.asset('assets/icons/saved.png'),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 8.0),
                                      child: Text(
                                        "Saved",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: const Color(0xff295EFF),
                                            fontSize: 24.0),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              onTap: () {
                                setState(() {
                                  contentState = 0;
                                });
                              },
                            ),
                            new GestureDetector(
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 24.0, horizontal: 8.0),
                                decoration: BoxDecoration(
                                  color: contentState == 1
                                      ? const Color.fromRGBO(41, 94, 255, 0.15)
                                      : Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Column(
                                  children: <Widget>[
                                    SizedBox(
                                      child: Image.asset(
                                          'assets/icons/applied.png'),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 8.0),
                                      child: Text(
                                        "Applied",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: const Color(0xff295EFF),
                                            fontSize: 24.0),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              onTap: () {
                                setState(() {
                                  contentState = 1;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: contentState == 0
                            ? _savedScreen(context)
                            : _appliedScreen(context),
                      )
                    ],
                  ));
  }

  Widget _savedScreen(BuildContext context) {
    return new Container(
        margin: const EdgeInsets.symmetric(vertical: 30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Expanded(
              child: Container(
                child: Image.asset('assets/images/saved_empty.png'),
                padding: const EdgeInsets.only(bottom: 12.0),
              ),
            ),
            Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Text(
                    'You haven’t saved any org!',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16.0, color: Colors.black),
                  ),
                ),
                FlatButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    onPressed: () {
                      // onGoogleSignIn(context);
                      selectedPageIndex = 1;
                    },
                    color: const Color(0xff295EFF),
                    child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('Find an organization',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 24.0,
                                fontWeight: FontWeight.bold))))
              ],
            )
          ],
        ));
  }

  Widget _appliedScreen(BuildContext context) {
    return new Container(
        margin: const EdgeInsets.symmetric(vertical: 30.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                child: Container(
                  child: Image.asset('assets/images/applied_empty.png'),
                  padding: const EdgeInsets.only(bottom: 12.0),
                ),
              ),
              Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Text(
                      'You haven’t applied for any org!',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16.0, color: Colors.black),
                    ),
                  ),
                  FlatButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      onPressed: () {
                        setState(() {
                          contentState = 0;
                        });
                      },
                      color: const Color(0xff295EFF),
                      child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('Update my tracker',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.bold))))
                ],
              )
            ]));
  }
}
