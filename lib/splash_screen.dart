import 'package:flutter/material.dart';
import 'package:after_layout/after_layout.dart';
import 'package:sbsc_capstone_team_jupiter/screens/auth/login.dart';
import 'package:sbsc_capstone_team_jupiter/screens/landing_screen.dart';
import 'package:sbsc_capstone_team_jupiter/screens/tab_controller.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Splash extends StatefulWidget {
  @override
  SplashState createState() => new SplashState();
}

class SplashState extends State<Splash> with AfterLayoutMixin<Splash> {
  Future checkFirstSeen() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool _seen = (prefs.getBool('seen') ?? false);

    if (_seen) {
      Navigator.of(context).pushReplacement(
          new MaterialPageRoute(builder: (context) => new LandingScreen()));
    } else {
      await prefs.setBool('seen', true);
      Navigator.of(context).pushReplacement(
          new MaterialPageRoute(builder: (context) => new LandingScreen()));
    }
  }

  @override
  void afterFirstLayout(BuildContext context) => checkFirstSeen();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    checkFirstSeen();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/launch_logo.png"), fit: BoxFit.fill),
        ),
      ),
    );
  }
}
