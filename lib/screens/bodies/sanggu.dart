import 'package:pavilion_web/screens/empty.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:pavilion_web/models/user.dart';
import 'package:page_transition/page_transition.dart';

class SangguScreen extends StatefulWidget {
  @override
  _SangguScreenState createState() => _SangguScreenState();
}

class _SangguScreenState extends State<SangguScreen> {
  bool bookmark = false;
  bool applied = false;
  int state = 0;

  @override
  void initState() {
    state = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Sanggu",
          style: TextStyle(
              color: const Color(0xff1C41B2), fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
        elevation: 0.05,
        iconTheme: new IconThemeData(color: const Color(0xff1C41B2)),
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
                                'assets/bodies/student-groups/bookmark_active.png')
                            : Image.asset(
                                'assets/bodies/student-groups/bookmark.png'),
                      ),
                    ))
              ],
      ),
      body: Container(
          padding: const EdgeInsets.all(16.0),
          color: Colors.white,
          child: ListView(
            primary: false,
            children: <Widget>[
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  height: 72.0,
                  width: 72.0,
                  child: Image.asset('assets/bodies/sanggu/logo.png'),
                ),
              ),
              Text(
                "Sanggunian ng mga Mag-aaral ng mga Paaralang Loyola ng Ateneo de Manila",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                textAlign: TextAlign.center,
              ),
              Stack(
                children: <Widget>[
                  Container(
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        child: Image.asset(
                          'assets/orgs/coa/STUDENT_GROUPS/sanggu_cover.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      height: 180,
                      width: double.infinity,
                      margin: const EdgeInsets.only(bottom: 8, top: 12)),
                  Container(
                    height: 184,
                    alignment: Alignment.bottomCenter,
                    //padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          InkWell(
                            child:
                                Image.asset('assets/icons/websiteSanggu.png'),
                            onTap: () => launch('https://www.oursanggu.com'),
                          ),
                          InkWell(
                            child: Image.asset('assets/icons/twitSanggu.png'),
                            onTap: () =>
                                launch('https://www.twitter.com/ADMUSanggu'),
                          ),
                          InkWell(
                            child: Image.asset('assets/icons/fbSanggu.png'),
                            onTap: () =>
                                launch('https://www.facebook.com/ADMUSanggu'),
                          ),
                        ]),
                  ),
                ],
              ),
              Text(
                "The LS Sanggunian is the student government of AdMU that aims to listen and provide a voice to each Loyola School student in the hopes to create an empowered community. The Sanggunian aims to build a community wherein individuals are engaged not only in school affairs, but also towards the Philippine nation and the global community.  Aside from these, it hopes to foster leaders with an unconditional type of service through its numerous projects and initiatives including but not limited to the recently concluded MHAW and the annual One Big Pride. Moreover, the different School Sanggunians are all geared towards catering to the different needs of their respective students.",
                style: TextStyle(fontSize: 16),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 24, bottom: 16),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            state = 0;
                          });
                        },
                        child: Align(
                            alignment: Alignment.center,
                            child: Container(
                              width: MediaQuery.of(context).size.width / 3,
                              height: 48,
                              child: Text(
                                "Office of the President",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                                textAlign: TextAlign.center,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                              ),
                            )),
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            state = 1;
                          });
                        },
                        child: Align(
                            alignment: Alignment.center,
                            child: Container(
                              width: MediaQuery.of(context).size.width / 3,
                              height: 48,
                              child: Text(
                                "Office of the Vice President",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                                textAlign: TextAlign.center,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                              ),
                            )),
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            state = 2;
                          });
                        },
                        child: Align(
                            alignment: Alignment.center,
                            child: Container(
                              width: MediaQuery.of(context).size.width / 3,
                              height: 48,
                              child: Text(
                                "School \n Sanggu",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                                textAlign: TextAlign.center,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                              ),
                            )),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 24),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        height: 5,
                        width: MediaQuery.of(context).size.width / 3,
                        color: state == 0
                            ? Color(0xff295EFF)
                            : state == 1
                                ? Color(0xffE5E5E5)
                                : Color(0xffE5E5E5),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 5,
                        width: MediaQuery.of(context).size.width / 3,
                        color: state == 0
                            ? Color(0xffE5E5E5)
                            : state == 1
                                ? Color(0xff295EFF)
                                : Color(0xffE5E5E5),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 5,
                        width: MediaQuery.of(context).size.width / 3,
                        color: state == 0
                            ? Color(0xffE5E5E5)
                            : state == 1
                                ? Color(0xffE5E5E5)
                                : Color(0xff295EFF),
                      ),
                    )
                  ],
                ),
              ),
              Column(
                children: <Widget>[
                  state == 0
                      ? Column(children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(top: 16, bottom: 16),
                            child: Row(
                              children: <Widget>[
                                Container(
                                  height: 48,
                                  width: 48,
                                  child: Image.asset(
                                    'assets/bodies/sanggu/casmv.png',
                                    cacheWidth: 96,
                                    cacheHeight: 96,
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 16),
                                    child: Text(
                                      "Commission on Anti Sexual Misconduct and Violence",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                      ),
                                      overflow: TextOverflow.fade,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 16, bottom: 16),
                            child: Row(
                              children: <Widget>[
                                Container(
                                  height: 48,
                                  width: 48,
                                  child: Image.asset(
                                    'assets/bodies/sanggu/cge.png',
                                    cacheWidth: 96,
                                    cacheHeight: 96,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 16),
                                  child: Text(
                                    "Commission on Gender Equality",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                    overflow: TextOverflow.fade,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 16, bottom: 16),
                            child: Row(
                              children: <Widget>[
                                Container(
                                  height: 48,
                                  width: 48,
                                  child: Image.asset(
                                    'assets/bodies/sanggu/cmh.png',
                                    cacheWidth: 96,
                                    cacheHeight: 96,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 16),
                                  child: Text(
                                    "Commission on Mental Health",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                    overflow: TextOverflow.fade,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 16, bottom: 16),
                            child: Row(
                              children: <Widget>[
                                Container(
                                  height: 48,
                                  width: 48,
                                  child: Image.asset(
                                    'assets/bodies/sanggu/cpsni.png',
                                    cacheWidth: 96,
                                    cacheHeight: 96,
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding:
                                        EdgeInsets.only(left: 16, right: 16),
                                    child: Text(
                                      "Commission on Persons with Special Needs Inclusion",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                      ),
                                      overflow: TextOverflow.fade,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 16, bottom: 16),
                            child: Row(
                              children: <Widget>[
                                Container(
                                  height: 48,
                                  width: 48,
                                  child: Image.asset(
                                    'assets/bodies/sanggu/daa.png',
                                    cacheWidth: 96,
                                    cacheHeight: 96,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 16,
                                    right: 16,
                                  ),
                                  child: Text(
                                    "Department of Administrative Affairs",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                    overflow: TextOverflow.fade,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: 16,
                              bottom: 16,
                            ),
                            child: Row(
                              children: <Widget>[
                                Container(
                                  height: 48,
                                  width: 48,
                                  child: Image.asset(
                                    'assets/bodies/sanggu/dbm.png',
                                    cacheWidth: 96,
                                    cacheHeight: 96,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 16,
                                    right: 16,
                                  ),
                                  child: Text(
                                    "Department of Budget and Management",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                    overflow: TextOverflow.fade,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 16, bottom: 16),
                            child: Row(
                              children: <Widget>[
                                Container(
                                  height: 48,
                                  width: 48,
                                  child: Image.asset(
                                    'assets/bodies/sanggu/doc.png',
                                    cacheWidth: 96,
                                    cacheHeight: 96,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 16,
                                    right: 16,
                                  ),
                                  child: Text(
                                    "Department of Communications",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                    overflow: TextOverflow.fade,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 16, bottom: 16),
                            child: Row(
                              children: <Widget>[
                                Container(
                                  height: 48,
                                  width: 48,
                                  child: Image.asset(
                                    'assets/bodies/sanggu/dea.png',
                                    cacheWidth: 96,
                                    cacheHeight: 96,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 16,
                                    right: 16,
                                  ),
                                  child: Text(
                                    "Department of External Affairs",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 16, bottom: 16),
                            child: Row(
                              children: <Widget>[
                                Container(
                                  height: 48,
                                  width: 48,
                                  child: Image.asset(
                                    'assets/orgs/coa/STUDENT_GROUPS/dsws_logo.png',
                                    cacheWidth: 96,
                                    cacheHeight: 96,
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      left: 16,
                                      right: 16,
                                    ),
                                    child: Text(
                                      "Department of Student Welfare and Services",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                      ),
                                      overflow: TextOverflow.fade,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 16, bottom: 16),
                            child: Row(
                              children: <Widget>[
                                Container(
                                  height: 48,
                                  width: 48,
                                  child: Image.asset(
                                      'assets/bodies/sanggu/logo.png'),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 16,
                                    right: 16,
                                  ),
                                  child: Text(
                                    "Presidential Support Team",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                    overflow: TextOverflow.fade,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ])
                      : state == 1
                          ? Column(children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(top: 16, bottom: 16),
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      height: 48,
                                      width: 48,
                                      child: Image.asset(
                                        'assets/bodies/sanggu/LegalAffairs.png',
                                        cacheWidth: 96,
                                        cacheHeight: 96,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: 16,
                                        right: 16,
                                      ),
                                      child: Text(
                                        "Central Assembly Secretariat",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 16, bottom: 16),
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      height: 48,
                                      width: 48,
                                      child: Image.asset(
                                        'assets/bodies/sanggu/Internals.png',
                                        cacheWidth: 96,
                                        cacheHeight: 96,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: 16,
                                        right: 16,
                                      ),
                                      child: Text(
                                        "Internals Division",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 16, bottom: 16),
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      height: 48,
                                      width: 48,
                                      child: Image.asset(
                                        'assets/bodies/sanggu/StratandDev.png',
                                        cacheWidth: 96,
                                        cacheHeight: 96,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: 16,
                                      ),
                                      child: Text(
                                        "Strategy and Development Division",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ])
                          : Column(children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(top: 16, bottom: 16),
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      height: 48,
                                      width: 48,
                                      child: Image.asset(
                                        'assets/bodies/sanggu/soh.png',
                                        cacheWidth: 96,
                                        cacheHeight: 96,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: 16,
                                        right: 16,
                                      ),
                                      child: Text(
                                        "SOH Sanggunian",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 16, bottom: 16),
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      height: 48,
                                      width: 48,
                                      child: Image.asset(
                                        'assets/bodies/sanggu/som.png',
                                        cacheWidth: 96,
                                        cacheHeight: 96,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: 16,
                                        right: 16,
                                      ),
                                      child: Text(
                                        "JGSOM Sanggunian",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 16, bottom: 16),
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      height: 48,
                                      width: 48,
                                      child: Image.asset(
                                        'assets/bodies/sanggu/sose.png',
                                        cacheWidth: 96,
                                        cacheHeight: 96,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: 16,
                                        right: 16,
                                      ),
                                      child: Text(
                                        "SOSE Sanggunian",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 16, bottom: 16),
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      height: 48,
                                      width: 48,
                                      child: Image.asset(
                                        'assets/bodies/sanggu/soss.png',
                                        cacheWidth: 96,
                                        cacheHeight: 96,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: 16,
                                        right: 16,
                                      ),
                                      child: Text(
                                        "SOSS Sanggunian",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ])
                ],
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 60, vertical: 24),
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
                      // launch("https://oursanggu.com/");
                    },
                    color: const Color(0xff1C41B2),
                    child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('Learn More',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 24.0,
                                fontWeight: FontWeight.bold)))),
              )
            ],
          )),
    );
  }
}
