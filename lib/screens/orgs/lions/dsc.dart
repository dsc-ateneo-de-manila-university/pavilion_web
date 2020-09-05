import 'package:pavilion_web/screens/empty.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:pavilion_web/models/user.dart';
import 'package:page_transition/page_transition.dart';
import 'dart:io';

class DSCLoyolaScreen extends StatefulWidget {
  @override
  _DSCLoyolaState createState() => _DSCLoyolaState();
}

class _DSCLoyolaState extends State<DSCLoyolaScreen> {
  bool bookmark = false;
  bool applied = false;
  bool connected = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      try {
        final result = await InternetAddress.lookup('google.com');
        if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
          setState(() {
            connected = true;
          });
        }
      } on SocketException catch (_) {
        setState(() {
          connected = false;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "DSC Loyola",
            style: TextStyle(
                color: const Color(0xff295EFF), fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.white,
          elevation: 0.05,
          iconTheme: new IconThemeData(color: const Color(0xff295EFF)),
          actions: imageUrl == ""
              ? null
              : <Widget>[
                  Padding(
                      padding: const EdgeInsets.only(right: 20.0),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            if (!applied) {
                              bookmark = !bookmark;
                            }
                          });
                        },
                        child: SizedBox(
                          width: 24.0,
                          height: 24.0,
                          child: bookmark
                              ? Image.asset(
                                  'assets/icons/org_bookmark_active.png')
                              : Image.asset('assets/icons/org_bookmark.png'),
                        ),
                      ))
                ],
        ),
        body: Container(
          color: Colors.white,
          child: ListView(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: const Color(0xffFFFFFF),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0xff000000).withOpacity(0.05),
                            spreadRadius: 1,
                            blurRadius: 2,
                            offset: Offset(0, 4), // changes position of shadow
                          ),
                        ],
                      ),
                      child: SizedBox(
                          height: 200,
                          width: double.infinity,
                          child: Image.asset(
                            "assets/orgs/lions/covers/DSC.jpg",
                            fit: BoxFit.cover,
                          ))),
                  Container(
                    alignment: Alignment.bottomCenter,
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    height: 184,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        SizedBox(
                            width: 64,
                            height: 64,
                            child:
                                Image.asset('assets/orgs/lions/logos/DSC.png')),
                        Row(children: <Widget>[
                          InkWell(
                            child: Image.asset('assets/icons/web.png'),
                            onTap: () => launch("https://dscadmu.org/"),
                          ),
                          InkWell(
                            child: Image.asset('assets/icons/ig.png'),
                            onTap: () =>
                                launch("https://www.instagram.com/dsc.loyola/"),
                          ),
                          InkWell(
                            child: Image.asset('assets/icons/twitter.png'),
                            onTap: () =>
                                launch("https://twitter.com/DSCLoyola"),
                          ),
                          InkWell(
                            child: Image.asset('assets/icons/fb.png'),
                            onTap: () =>
                                launch("https://www.facebook.com/dscloyola"),
                          )
                        ])
                      ],
                    ),
                  )
                ],
              ),
              Padding(
                  padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
                  child: Text(
                    "Developer Student Clubs Loyola",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  )),
              Padding(
                  padding:
                      const EdgeInsets.only(bottom: 16, left: 16, right: 16),
                  child: Text(
                    "“Uplifting communities through technology.”",
                    style: TextStyle(fontSize: 16),
                  )),
              // Org Details
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    "Org Details",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  )),
              Padding(
                  padding:
                      const EdgeInsets.only(bottom: 16, left: 16, right: 16),
                  child: Text(
                    "Developer Student Clubs Loyola is a student organization in the Ateneo de Manila University powered by Google Developers that aims to build students’ skills and network by giving them access to different technologies, specifically Google Developer technologies like Android, Firebase, Angular, Flutter, Google Cloud Platform and many more. Together, we learn in a peer-to-peer learning environment and build solutions for the community.",
                    style: TextStyle(fontSize: 16),
                  )),
              // Vision
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    "Vision",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  )),
              Padding(
                  padding:
                      const EdgeInsets.only(bottom: 16, left: 16, right: 16),
                  child: Text(
                    "We are a community of developers that are passionate about uplifting communities through technology and innovation.",
                    style: TextStyle(fontSize: 16),
                  )),
              // Mission
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    "Mission",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  )),
              Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: Text(
                    "Empower - We empower people through technology and programming education.",
                    style: TextStyle(fontSize: 16),
                  )),
              Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: Text(
                    "Enlighten - We enlighten people to the power of innovation and problem-solving.",
                    style: TextStyle(fontSize: 16),
                  )),
              Padding(
                  padding:
                      const EdgeInsets.only(bottom: 16, left: 16, right: 16),
                  child: Text(
                    "Nurture - We nurture people to create meaningful technological solutions for the community.",
                    style: TextStyle(fontSize: 16),
                  )),
              //Events and Projects
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    "Events and Projects",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  )),
              // Event/Project # 1
              Container(
                height: 160,
                margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Image.asset("assets/orgs/lions/logos/DSC.png"),
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    "Cloud Study Jams",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  )),
              Padding(
                  padding:
                      const EdgeInsets.only(bottom: 16, left: 16, right: 16),
                  child: Text(
                    "A series of workshops with topics ranging from Machine Learning, BigQuery, to Kubernetes. These workshops are tailored to fit members’ diverse skill levels and aims to provide them with practical knowledge on Google Cloud Technology.",
                    style: TextStyle(fontSize: 16),
                  )),
              // Event/Project # 2
              Container(
                height: 160,
                margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Image.asset("assets/orgs/lions/logos/DSC.png"),
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    "Tech at Home",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  )),
              Padding(
                  padding:
                      const EdgeInsets.only(bottom: 16, left: 16, right: 16),
                  child: Text(
                    "A student-led online technology seminar series that teaches new technologies, especially Google technologies to a wide and diverse audience.",
                    style: TextStyle(fontSize: 16),
                  )),
              // Event/Project # 3
              Container(
                height: 160,
                margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Image.asset("assets/orgs/lions/logos/DSC.png"),
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    "HackFest 2020 Online",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  )),
              Padding(
                  padding:
                      const EdgeInsets.only(bottom: 16, left: 16, right: 16),
                  child: Text(
                    "A week-long series of workshops and seminars, culminating in a two-day hackathon where students can exercise their skills in software development while making an impact on society.",
                    style: TextStyle(fontSize: 16),
                  )),
              //Learn More Button
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 60, vertical: 30),
                child: FlatButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          PageTransition(
                              type: PageTransitionType.fade,
                              child: EmptyScreen()));
                      // launch("https://dscadmu.org/");
                    },
                    color: const Color(0xff295EFF),
                    child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('Learn More',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 24.0,
                                fontWeight: FontWeight.bold)))),
              )
            ],
          ),
        ),
      ),
    );
  }
}
