import 'package:pavilion_web/screens/empty.dart';
import 'package:page_transition/page_transition.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:pavilion_web/models/user.dart';

class OrgTemplateScreen extends StatefulWidget {
  final String _name;
  final String _abbreviation;
  final String _tagline;
  final String _website;
  final String _facebook;
  final String _twitter;
  final String _instagram;
  final String _description;
  final String _advocacy;
  final String _core;
  final String _projectImageOne;
  final String _projectTitleOne;
  final String _projectDescOne;
  final String _projectImageTwo;
  final String _projectTitleTwo;
  final String _projectDescTwo;
  final String _projectImageThree;
  final String _projectTitleThree;
  final String _projectDescThree;
  final String _vision;
  final String _mission;
  final String _body;
  final String _logo;
  final String _cover;

  OrgTemplateScreen([
    this._name,
    this._abbreviation,
    this._tagline,
    this._website,
    this._facebook,
    this._twitter,
    this._instagram,
    this._description,
    this._advocacy,
    this._core,
    this._projectTitleOne,
    this._projectDescOne,
    this._projectTitleTwo,
    this._projectDescTwo,
    this._projectTitleThree,
    this._projectDescThree,
    this._vision,
    this._mission,
    this._body,
    this._logo,
    this._cover,
    this._projectImageOne,
    this._projectImageTwo,
    this._projectImageThree,
  ]);

  @override
  _OrgTemplateScreenState createState() => _OrgTemplateScreenState(
        _name,
        _abbreviation,
        _tagline,
        _website,
        _facebook,
        _twitter,
        _instagram,
        _description,
        _advocacy,
        _core,
        _projectTitleOne,
        _projectDescOne,
        _projectTitleTwo,
        _projectDescTwo,
        _projectTitleThree,
        _projectDescThree,
        _vision,
        _mission,
        _body,
        _logo,
        _cover,
        _projectImageOne,
        _projectImageTwo,
        _projectImageThree,
      );
}

class _OrgTemplateScreenState extends State<OrgTemplateScreen> {
  bool bookmark = false;
  bool applied = false;
  String _name;
  String _abbreviation;
  String _tagline;
  String _website;
  String _facebook;
  String _twitter;
  String _instagram;
  String _description;
  String _advocacy;
  String _core;
  String _projectImageOne;
  String _projectTitleOne;
  String _projectDescOne;
  String _projectImageTwo;
  String _projectTitleTwo;
  String _projectDescTwo;
  String _projectImageThree;
  String _projectTitleThree;
  String _projectDescThree;
  String _vision;
  String _mission;
  String _body;
  String _logo;
  String _cover;

  _OrgTemplateScreenState(
    this._name,
    this._abbreviation,
    this._tagline,
    this._website,
    this._facebook,
    this._twitter,
    this._instagram,
    this._description,
    this._advocacy,
    this._core,
    this._projectImageOne,
    this._projectTitleOne,
    this._projectDescOne,
    this._projectImageTwo,
    this._projectTitleTwo,
    this._projectDescTwo,
    this._projectImageThree,
    this._projectTitleThree,
    this._projectDescThree,
    this._vision,
    this._mission,
    this._body,
    this._logo,
    this._cover,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            _abbreviation != "" ? _abbreviation : _name,
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
                        child: _cover != ""
                            ? Image.asset(
                                _cover,
                                fit: BoxFit.cover,
                              )
                            : Image.asset(
                                "assets/bodies/sanggu/cover.png",
                                fit: BoxFit.cover,
                              )),
                  ),
                  Container(
                    alignment: Alignment.bottomCenter,
                    height: 184,
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        SizedBox(
                          width: 64,
                          height: 64,
                          child: Image.asset(_logo),
                        ),
                        Row(children: <Widget>[
                          _website != ""
                              ? InkWell(
                                  child: Image.asset('assets/icons/web.png'),
                                  onTap: () => launch(_website),
                                )
                              : SizedBox.shrink(),
                          _instagram != ""
                              ? InkWell(
                                  child: Image.asset('assets/icons/ig.png'),
                                  onTap: () => launch(_instagram),
                                )
                              : SizedBox.shrink(),
                          _twitter != ""
                              ? InkWell(
                                  child:
                                      Image.asset('assets/icons/twitter.png'),
                                  onTap: () => launch(_twitter),
                                )
                              : SizedBox.shrink(),
                          _facebook != ""
                              ? InkWell(
                                  child: Image.asset('assets/icons/fb.png'),
                                  onTap: () => launch(_facebook),
                                )
                              : SizedBox.shrink(),
                        ])
                      ],
                    ),
                  )
                ],
              ),
              Padding(
                  padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
                  child: Text(
                    widget._name,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  )),
              _tagline != ""
                  ? Padding(
                      padding: const EdgeInsets.only(
                          bottom: 16, left: 16, right: 16),
                      child: Text(
                        _tagline,
                        style: TextStyle(fontSize: 16),
                      ))
                  : SizedBox.shrink(),
              // Org Details
              _description != ""
                  ? Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        "Org Details",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ))
                  : SizedBox.shrink(),
              _description != ""
                  ? Padding(
                      padding: const EdgeInsets.only(
                          bottom: 16, left: 16, right: 16),
                      child: Text(
                        _description,
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ))
                  : SizedBox.shrink(),
              // Vision
              _vision != ""
                  ? Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        "Vision",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ))
                  : SizedBox.shrink(),
              _vision != ""
                  ? Padding(
                      padding: const EdgeInsets.only(
                          bottom: 16, left: 16, right: 16),
                      child: Text(
                        _vision,
                        style: TextStyle(fontSize: 16),
                      ))
                  : SizedBox.shrink(),
              // Mission
              _mission != ""
                  ? Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        "Mission",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ))
                  : SizedBox.shrink(),
              _mission != ""
                  ? Padding(
                      padding: const EdgeInsets.only(
                          bottom: 16, left: 16, right: 16),
                      child: Text(
                        _mission,
                        style: TextStyle(fontSize: 16),
                      ))
                  : SizedBox.shrink(),
              // Advocacy
              _advocacy != ""
                  ? Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        "Advocacy",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ))
                  : SizedBox.shrink(),
              _advocacy != ""
                  ? Padding(
                      padding: const EdgeInsets.only(
                          bottom: 16, left: 16, right: 16),
                      child: Text(
                        _advocacy,
                        style: TextStyle(fontSize: 16),
                      ))
                  : SizedBox.shrink(),
              // Core Competency
              _core != ""
                  ? Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Text(
                        "Core Competency",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ))
                  : SizedBox.shrink(),
              _core != ""
                  ? Padding(
                      padding: const EdgeInsets.only(
                          left: 16, right: 16, bottom: 16),
                      child: Text(
                        _core,
                        style: TextStyle(fontSize: 16),
                      ))
                  : SizedBox.shrink(),
              //Events and Projects
              _projectTitleOne != "" &&
                      _projectTitleTwo != "" &&
                      _projectTitleThree != ""
                  ? Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        "Events and Projects",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ))
                  : SizedBox.shrink(),
              // Event/Project # 1
              _projectTitleOne != "" && _projectDescOne != ""
                  ? Container(
                      height: 160,
                      margin: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 8),
                      child: Image.asset(_logo),
                    )
                  : SizedBox.shrink(),
              _projectTitleOne != ""
                  ? Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        _projectTitleOne,
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ))
                  : SizedBox.shrink(),
              _projectDescOne != ""
                  ? Padding(
                      padding: const EdgeInsets.only(
                          bottom: 16, left: 16, right: 16),
                      child: Text(
                        _projectDescOne,
                        style: TextStyle(fontSize: 16),
                      ))
                  : SizedBox.shrink(),
              // Event/Project # 2
              _projectTitleTwo != "" && _projectDescTwo != ""
                  ? Container(
                      height: 160,
                      margin: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 8),
                      child: Image.asset(_logo),
                    )
                  : SizedBox.shrink(),
              _projectTitleTwo != ""
                  ? Padding(
                      padding: const EdgeInsets.only(left: 16, right: 16),
                      child: Text(
                        _projectTitleTwo,
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ))
                  : SizedBox.shrink(),
              _projectDescTwo != ""
                  ? Padding(
                      padding: const EdgeInsets.only(
                          bottom: 16, left: 16, right: 16),
                      child: Text(
                        _projectDescTwo,
                        style: TextStyle(fontSize: 16),
                      ))
                  : SizedBox.shrink(),
              // Event/Project # 3
              _projectTitleThree != "" && _projectDescThree != ""
                  ? Container(
                      height: 160,
                      margin: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 8),
                      child: Image.asset(_logo),
                    )
                  : SizedBox.shrink(),
              _projectTitleThree != ""
                  ? Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        _projectTitleThree,
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ))
                  : SizedBox.shrink(),
              _projectDescThree != ""
                  ? Padding(
                      padding: const EdgeInsets.only(
                          bottom: 32, left: 16, right: 16),
                      child: Text(
                        _projectDescThree,
                        style: TextStyle(fontSize: 16),
                      ))
                  : SizedBox.shrink(),
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
