import 'package:pavilion_web/web_frame.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pavilion_web/screens/login.dart';
import 'package:pavilion_web/screens/main.dart';
import 'dart:async';
// import 'package:pavilion_web/controllers/push_nofitications.dart';
import 'package:pavilion_web/widgets/base-widget.dart';

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
        child: child,
      ),
      initialRoute: LoginScreen.route,
      onGenerateRoute: RouteConfiguration.onGenerateRoute,
      debugShowCheckedModeBanner: false,
    );
  }
}

class Path {
  const Path(this.pattern, this.builder);

  /// A RegEx string for route matching.
  final String pattern;

  /// The builder for the associated pattern route. The first argument is the
  /// [BuildContext] and the second argument is a RegEx match if it is
  /// included inside of the pattern.
  final Widget Function(BuildContext, String) builder;
}

class RouteConfiguration {
  /// List of [Path] to for route matching. When a named route is pushed with
  /// [Navigator.pushNamed], the route name is matched with the [Path.pattern]
  /// in the list below. As soon as there is a match, the associated builder
  /// will be returned. This means that the paths higher up in the list will
  /// take priority.
  static List<Path> paths = [
    Path(
      r'^' + LoginScreen.route,
      (context, match) => LoginScreen(),
    ),
    Path(
      r'^' + MainScreen.route,
      (context, match) => MainScreen(),
    ),
  ];

  /// The route generator callback used when the app is navigated to a named
  /// route. Set it on the [MaterialApp.onGenerateRoute] or
  /// [WidgetsApp.onGenerateRoute] to make use of the [paths] for route
  /// matching.
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    for (Path path in paths) {
      final regExpPattern = RegExp(path.pattern);
      if (regExpPattern.hasMatch(settings.name)) {
        final firstMatch = regExpPattern.firstMatch(settings.name);
        final match = (firstMatch.groupCount == 1) ? firstMatch.group(1) : null;
        return MaterialPageRoute<void>(
          builder: (context) => path.builder(context, match),
          settings: settings,
        );
      }
    }

    // If no match was found, we let [WidgetsApp.onUnknownRoute] handle it.
    return null;
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => LoginScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            color: Colors.white,
            padding: EdgeInsets.symmetric(horizontal: 16),
            height: double.infinity,
            width: double.infinity,
            child: Center(child: BaseWidget(builder: (context, sizeInfo) {
              return Column(children: <Widget>[
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset(
                        'assets/images/logo.png',
                        //width: MediaQuery.of(context).size.height,
                      ),
                      Text(
                        "pavilion",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: "Nunito",
                            fontSize: 56.0,
                            color: const Color(0xff295EFF)),
                      )
                    ],
                  ),
                ),
                Align(
                    alignment: Alignment.bottomLeft,
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(left: 8.0, bottom: 4.0),
                          child: Text(
                            'Made by:',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Color(0xff787979),
                              fontSize: 12,
                              fontFamily: 'Google Sans',
                            ),
                          ),
                        ),
                      ],
                    )),
                Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 8.0, bottom: 24.0),
                      child: Image.asset(
                        'assets/images/dscl_horizontal.png',
                        width: MediaQuery.of(context).size.width * 0.5,
                      ),
                    )),
              ]);
            }))));
  }
}
