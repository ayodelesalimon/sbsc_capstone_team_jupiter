import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sbsc_capstone_team_jupiter/screens/auth/login.dart';

import 'package:sbsc_capstone_team_jupiter/screens/home/home.dart';
import 'package:sbsc_capstone_team_jupiter/screens/tab_controller.dart';
import 'package:sizer/sizer.dart';
import 'screens/auth/forgot_password.dart';

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
          '/': (context) => LoginPage(),
          '/home': (context) => HomesCreen(),
          '/loginPage': (context) => LoginPage(),
          '/createAccount': (context) => CreateAccount(),
          '/forgot_password': (context) => ForgotPassword(),
          // '/signIn': (context) => SigninPage(),
        },
      );
    });
  }
}
