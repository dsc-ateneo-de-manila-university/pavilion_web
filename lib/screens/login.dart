import 'dart:convert';
import 'dart:async';
import 'package:pavilion_web/models/orgs.dart';
import 'package:pavilion_web/screens/bodies/coa.dart';
import 'package:pavilion_web/templates/orgs.dart';
import 'package:pavilion_web/widgets/base-widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:pavilion_web/screens/main.dart';
import 'package:page_transition/page_transition.dart';
import 'package:pavilion_web/models/user.dart';
import 'bodies/lions.dart';

class LoginScreen extends StatefulWidget {
  static const String route = '/';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isUserSignedIn = false;
  List<Orgs> orgList = [];
  List<String> strList = [];
  List<Widget> normalList = [];
  List<Orgs> copList = [];
  List<Orgs> groupList = [];
  int counter = 0;
  Future _future;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      _future = loadJSON();
    });
  }

  Future loadJSON() async {
    var orgResult;

    String orgs = await rootBundle.loadString('assets/data/orgs.json');
    orgResult = json.decode(orgs.toString());
    for (int i = 0; i < orgResult.length; i++) {
      orgList.add(Orgs(
        orgResult[i]['Name'],
        orgResult[i]['Abbreviation'],
        orgResult[i]['Tagline'],
        orgResult[i]['Website'],
        orgResult[i]['Facebook'],
        orgResult[i]['Twitter'],
        orgResult[i]['Instagram'],
        orgResult[i]['Description'],
        orgResult[i]['Advocacy'],
        orgResult[i]['Core'],
        orgResult[i]['Awards'],
        orgResult[i]['projectTitleOne'],
        orgResult[i]['projectDescOne'],
        orgResult[i]['projectTitleTwo'],
        orgResult[i]['projectDescTwo'],
        orgResult[i]['projectTitleThree'],
        orgResult[i]['projectDescThree'],
        orgResult[i]['Vision'],
        orgResult[i]['Mission'],
        orgResult[i]['Body'],
        orgResult[i]['Logo'],
        orgResult[i]['Cluster'],
        orgResult[i]['Cover'],
        orgResult[i]['projectImageOne'],
        orgResult[i]['projectImageTwo'],
        orgResult[i]['projectImageThree'],
      ));
    }
    // Sorting Area
    orgList
        .sort((x, y) => x.name.toLowerCase().compareTo(y.name.toLowerCase()));

    copList.addAll(orgList.where(
        (i) => i.cluster.contains("Confederation of Publications (COP)")));

    groupList.addAll(orgList.where((i) => i.cluster.contains(
        "Student Groups (AEGIS, COMELEC, RegCom, SJC, ASLA, DSWS, LSOPCS, OMB, RLA, SANGGU, USAD)")));

    if (counter == 0) {
      filter();
      counter++;
    }

    // Added this to prevent duplication of Data
    orgList = [];
    copList = [];
    groupList = [];

    // Return something here, to prevent `Null` in Snapshot Validation below.
    return orgList;
  }

  filter() {
    List<Orgs> orgs = [];
    normalList = [];

    orgs.addAll(orgList);

    orgs.forEach((org) {
      normalList.add(
        GestureDetector(
          onTap: () {
            if (org.abbreviation == "COA-M") {
              return Navigator.push(
                context,
                PageTransition(
                  type: PageTransitionType.rightToLeft,
                  child: new COAScreen(),
                ),
              );
            } else if (org.abbreviation == "LIONS") {
              return Navigator.push(
                context,
                PageTransition(
                  type: PageTransitionType.rightToLeft,
                  child: new LionsScreen(),
                ),
              );
            } else {
              return Navigator.push(
                context,
                PageTransition(
                  type: PageTransitionType.rightToLeft,
                  child: new OrgTemplateScreen(
                    org.name,
                    org.abbreviation,
                    org.tagline,
                    org.website,
                    org.facebook,
                    org.twitter,
                    org.instagram,
                    org.description,
                    org.advocacy,
                    org.core,
                    org.projectTitleOne,
                    org.projectDescOne,
                    org.projectTitleTwo,
                    org.projectDescTwo,
                    org.projectTitleThree,
                    org.projectDescThree,
                    org.vision,
                    org.mission,
                    org.body,
                    org.logo,
                    org.cover,
                    org.projectImageOne,
                    org.projectImageTwo,
                    org.projectImageThree,
                  ),
                ),
              );
            }
          },
          child: Slidable(
            actionPane: SlidableDrawerActionPane(),
            actionExtentRatio: 0.25,
            secondaryActions: imageUrl == ""
                ? null
                : <Widget>[
                    IconSlideAction(
                        iconWidget:
                            Image.asset('assets/icons/list_bookmark.png'),
                        onTap: () {
                          Fluttertoast.showToast(
                              msg: "You have bookmarked an organization",
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.BOTTOM,
                              timeInSecForIosWeb: 1,
                              backgroundColor: Colors.grey,
                              textColor: Colors.white,
                              fontSize: 16.0);
                        },
                        color: const Color(0xff7598FF))
                  ],
            child: ListTile(
              leading: SizedBox(child: Image.asset(org.logo)),
              title: Text(org.name),
              subtitle: Text(org.body,
                  style: TextStyle(
                      fontSize: 12,
                      color: org.body == "COP"
                          ? const Color(0xff002864)
                          : org.body == "Student Groups"
                              ? const Color(0xff1C41B2)
                              : org.body == "LIONS"
                                  ? const Color(0xffFF801D)
                                  : const Color(0xffE84C4C))),
            ),
          ),
        ),
      );
      strList.add(org.name);
    });
    setState(() {
      // ignore: unnecessary_statements
      normalList;
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BaseWidget(builder: (context, sizeInfo) {
      return Scaffold(
        body: FutureBuilder(
          future: _future,
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting)
              return Center(
                child: CircularProgressIndicator(),
              );
            if (snapshot.hasData)
              return Container(
                color: Colors.white,
                padding: EdgeInsets.symmetric(
                    vertical: MediaQuery.of(context).size.height * 0.1),
                child: Center(
                  child: BaseWidget(builder: (context, sizeInfo) {
                    return Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(
                                  top:
                                      MediaQuery.of(context).size.height * 0.1),
                              child: Image.asset('assets/images/logo.png'),
                            ),
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
                                  Fluttertoast.showToast(
                                      msg:
                                          "You cannot sign in with Google when browsing on a web!",
                                      toastLength: Toast.LENGTH_SHORT,
                                      gravity: ToastGravity.BOTTOM,
                                      timeInSecForIosWeb: 1,
                                      backgroundColor: Colors.grey,
                                      textColor: Colors.white,
                                      fontSize: 16.0);
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
                                      PageTransition(
                                        type: PageTransitionType.fade,
                                        child: MainScreen(
                                          orgList,
                                          normalList,
                                          strList,
                                          copList,
                                          groupList,
                                        ),
                                      ),
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
                    );
                  }),
                ),
              );
            else
              return const Text('Some error happened');
          },
        ),
      );
    });
  }
}
