import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'package:pavilion_web/screens/home.dart';
import 'package:pavilion_web/screens/list.dart';
import 'package:pavilion_web/screens/settings.dart';
import 'package:pavilion_web/screens/tracker.dart';

import 'package:pavilion_web/models/screen.dart';

// import 'package:dio/dio.dart';

// ignore: must_be_immutable
class MainScreen extends StatefulWidget {
  static const String route = '/app';
  // ignore: unused_field
  static GoogleSignIn _googleSignIn;
  // ignore: unused_field
  FirebaseUser _user;

  MainScreen([FirebaseUser user, GoogleSignIn signIn]) {
    _user = user;
    _googleSignIn = signIn;
  }

  @override
  _MainScreenState createState() => new _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  static ScrollController scrollController;
  static TextEditingController _filter = new TextEditingController();

  var pages = [
    HomeScreen(),
    ListScreen(_filter, scrollController),
    TrackerScreen(),
    SettingsScreen(MainScreen._googleSignIn),
  ];

  // final dio = new Dio();
  String _searchText = "";
  List names = new List();
  List filteredNames = new List();
  Icon _searchIcon = new Icon(Icons.search);
  Widget _appBarTitle = new Text("Pavilion",
      style: TextStyle(
          color: const Color(0xff295EFF),
          fontWeight: FontWeight.bold,
          fontSize: 32.0));

  _MainScreenState() {
    _filter.addListener(() {
      if (_filter.text.isEmpty) {
        setState(() {
          _searchText = "";
          filteredNames = names;
        });
      } else {
        setState(() {
          _searchText = _filter.text;
        });
      }
    });
  }

  @override
  void initState() {
    // this._getNames();
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _buildBar(context),
        body: pages[selectedPageIndex],
        // body: Container(
        //   child: _buildList(),
        // ),
        resizeToAvoidBottomPadding: false,
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                  title: Text(""),
                  backgroundColor: Colors.white,
                  icon: SizedBox(
                    width: 56.0,
                    height: 56.0,
                    child: selectedPageIndex == 0
                        ? Image(
                            image: AssetImage('assets/icons/home_active.png'))
                        : Image(image: AssetImage('assets/icons/home.png')),
                  )),
              BottomNavigationBarItem(
                  title: Text(""),
                  backgroundColor: Colors.white,
                  icon: SizedBox(
                    width: 56.0,
                    height: 56.0,
                    child: selectedPageIndex == 1
                        ? Image(
                            image: AssetImage('assets/icons/list_active.png'))
                        : Image(image: AssetImage('assets/icons/list.png')),
                  )),
              BottomNavigationBarItem(
                  title: Text(""),
                  backgroundColor: Colors.white,
                  icon: SizedBox(
                    width: 56.0,
                    height: 56.0,
                    child: selectedPageIndex == 2
                        ? Image(
                            image:
                                AssetImage('assets/icons/tracker_active.png'))
                        : Image(image: AssetImage('assets/icons/tracker.png')),
                  )),
              BottomNavigationBarItem(
                  title: Text(""),
                  backgroundColor: Colors.white,
                  icon: SizedBox(
                    width: 56.0,
                    height: 56.0,
                    child: selectedPageIndex == 3
                        ? Image(
                            image:
                                AssetImage('assets/icons/settings_active.png'))
                        : Image(image: AssetImage('assets/icons/settings.png')),
                  )),
            ],
            onTap: (index) {
              setState(() {
                selectedPageIndex = index;
              });
            },
            currentIndex: selectedPageIndex));
  }

  Widget _buildBar(BuildContext context) {
    return new AppBar(
      centerTitle: false,
      title: _appBarTitle,
      automaticallyImplyLeading: false,
      backgroundColor: Colors.white,
      elevation: 0.05,
      iconTheme: new IconThemeData(color: const Color(0xff295EFF)),
      actions: <Widget>[
        Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: SizedBox(
              height: 32.0,
              width: 32.0,
              child: IconButton(
                icon: _searchIcon,
                onPressed: _searchPressed,
              ),
            )),
      ],
    );
  }

  // Widget _buildList() {
  //   if (!(_searchText.isEmpty)) {
  //     List tempList = new List();
  //     for (int i = 0; i < filteredNames.length; i++) {
  //       if (filteredNames[i]['name']
  //           .toLowerCase()
  //           .contains(_searchText.toLowerCase())) {
  //         tempList.add(filteredNames[i]);
  //       }
  //     }
  //     filteredNames = tempList;
  //   }
  //   return ListView.builder(
  //     itemCount: names == null ? 0 : filteredNames.length,
  //     itemBuilder: (BuildContext context, int index) {
  //       return new ListTile(
  //         title: Text(filteredNames[index]['name']),
  //         onTap: () => print(filteredNames[index]['name']),
  //       );
  //     },
  //   );
  // }

  void _searchPressed() {
    setState(() {
      selectedPageIndex = 1;
      if (this._searchIcon.icon == Icons.search) {
        this._searchIcon = new Icon(Icons.close);
        this._appBarTitle = new Container(
          decoration: new BoxDecoration(
              color: const Color(0xffE2EAFF),
              borderRadius: new BorderRadius.circular(10.0)),
          child: new Center(
            child: new TextFormField(
              cursorColor: const Color(0xfff295EFF),
              controller: _filter,
              style: TextStyle(color: const Color(0xff8198BB)),
              decoration: new InputDecoration(
                border: InputBorder.none,
                focusColor: const Color(0xfff295EFF),
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                prefixIcon:
                    new Icon(Icons.search, color: const Color(0xff8198BB)),
              ),
            ),
          ),
        );
      } else {
        this._searchIcon = new Icon(Icons.search);
        this._appBarTitle = new Text("Pavilion",
            style: TextStyle(
                color: const Color(0xff295EFF),
                fontWeight: FontWeight.bold,
                fontSize: 32.0));
        filteredNames = names;
        _filter.clear();
      }
    });
  }

  // void _getNames() async {
  //   final response = await dio.get('https://swapi.co/api/people');
  //   List tempList = new List();
  //   for (int i = 0; i < response.data['results'].length; i++) {
  //     tempList.add(response.data['results'][i]);
  //   }
  //   setState(() {
  //     names = tempList;
  //     names.shuffle();
  //     filteredNames = names;
  //   });
  // }
}
