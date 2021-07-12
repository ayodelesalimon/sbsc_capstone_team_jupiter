import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sbsc_capstone_team_jupiter/screen/account_profile.dart';
import 'package:sbsc_capstone_team_jupiter/screen/discover.dart';
import 'package:sbsc_capstone_team_jupiter/screen/home.dart';
//import 'package:sbsc_capstone_team_jupiter/screens/account/profile.dart';
import 'package:sbsc_capstone_team_jupiter/screens/home/home.dart';
import 'package:sbsc_capstone_team_jupiter/widgets/colors.dart';

import 'discover/home.dart';

class TabView extends StatefulWidget {
  final String name = 'tabPage';
  const TabView({Key key}) : super(key: key);

  @override
  _TabViewState createState() => _TabViewState();
}

class _TabViewState extends State<TabView> {
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
     HomeScreen(),
   DiscoverGridPage(),
    Profile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text(''),
                backgroundColor: Colors.white),
            BottomNavigationBarItem(
                icon: Icon(Icons.search),
                title: Text(''),
                backgroundColor: Colors.white),
            BottomNavigationBarItem(
              icon: Icon(Icons.more_horiz_outlined),
              title: Text(''),
              backgroundColor: Colors.white,
            ),
          ],
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          unselectedItemColor: Colors.grey,
          selectedItemColor: primaryColor,
          iconSize: 25,
          onTap: _onItemTapped,
          elevation: 5),
    );
  }
}
