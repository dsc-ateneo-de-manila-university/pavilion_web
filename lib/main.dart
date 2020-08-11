import 'package:pavilion_web/web_frame.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pavilion_web/screens/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          platform: TargetPlatform.iOS,
          fontFamily: 'Nunito',
          hintColor: Colors.white,
          backgroundColor: Colors.white),
      title: 'Pavilion Web',
      builder: (context, child) => WebFrame(
        child: LoginScreen(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
