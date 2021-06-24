import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sbsc_capstone_team_jupiter/screens/auth/onboarding_forgot.dart';
import 'package:sbsc_capstone_team_jupiter/screens/auth/onboarding_signin.dart';
import 'package:sbsc_capstone_team_jupiter/screens/home/home.dart';
import 'package:sbsc_capstone_team_jupiter/screens/tab_controller.dart';
import 'package:sizer/sizer.dart';
import 'screens/auth/onboarding_create.dart';
import 'screens/auth/create_account.dart';
import 'screens/landing_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'CapStone',
        theme: ThemeData(
          fontFamily: 'TT Norms Pro',
          primarySwatch: Colors.blue,
        ),
        routes: <String, WidgetBuilder>{
          
          '/': (context) => TabView(),
          '/createPassPage': (context) => CreatePassPage(),
          '/forgotPage': (context) => ForgotPage(),
          '/signIn': (context) => SigninPage(),
        },
      );
    });
  }
}
