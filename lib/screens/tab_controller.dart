import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sbsc_capstone_team_jupiter/screens/account/profile.dart';
import 'package:sbsc_capstone_team_jupiter/screens/home/home.dart';
import 'package:sbsc_capstone_team_jupiter/widgets/colors.dart';

import 'discover/home.dart';


class TabView extends StatefulWidget {
  const TabView({ Key key }) : super(key: key);

  @override
  _TabViewState createState() => _TabViewState();
}

class _TabViewState extends State<TabView> {
   int _selectedIndex = 0;  
  static const List<Widget> _widgetOptions = <Widget>[  
   HomesCreen(),  
    DiscoverPage(),
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
            backgroundColor: Colors.white  
          ),  
          BottomNavigationBarItem(  
            icon: Icon(Icons.search),  
           title: Text(''),  
            backgroundColor: Colors.white  
          ),  
          BottomNavigationBarItem(  
            icon: Icon(Icons.more),  
            title: Text(''),  
            backgroundColor: Colors.white,  
          ),  
        ],  
        type: BottomNavigationBarType.fixed,  
        currentIndex: _selectedIndex,  
        showSelectedLabels: false,
        showUnselectedLabels: false,
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.black,  
        iconSize: 25,  
        onTap: _onItemTapped,  
        elevation: 5  
      ),  
    
    );
  }
}