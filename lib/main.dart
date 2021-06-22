import 'package:flutter/material.dart';
import 'screens/landing_screen.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PageViewIndicators Demo',
      theme: ThemeData(
        fontFamily: 'TT Norms Pro',
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (context) => LandingScreen(),
      },
    );
  }
}
