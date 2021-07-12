import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sbsc_capstone_team_jupiter/providers/auth.dart';
import 'package:sbsc_capstone_team_jupiter/providers/user_provider.dart';
import 'package:sbsc_capstone_team_jupiter/providers/user_state.dart';
import 'package:sbsc_capstone_team_jupiter/screen/category.dart';
import 'package:sbsc_capstone_team_jupiter/screen/create_account.dart';
import 'package:sbsc_capstone_team_jupiter/screen/home.dart';
import 'package:sbsc_capstone_team_jupiter/screen/onboarding_forgot.dart';

import 'package:sbsc_capstone_team_jupiter/screens/account/edit_profile.dart';
import 'package:sbsc_capstone_team_jupiter/screens/account/profile.dart';
import 'package:sbsc_capstone_team_jupiter/screens/auth/login.dart';
import 'package:sbsc_capstone_team_jupiter/screens/cart/cart.dart';

import 'package:sbsc_capstone_team_jupiter/screens/home/home.dart';
import 'package:sbsc_capstone_team_jupiter/screens/order/account_order.dart';
import 'package:sbsc_capstone_team_jupiter/screens/payment/card.dart';
import 'package:sbsc_capstone_team_jupiter/screens/splash_screen.dart';
import 'package:sbsc_capstone_team_jupiter/screens/tab_controller.dart';
import 'package:sbsc_capstone_team_jupiter/splash_screen.dart';
//import 'package:sbsc_capstone_team_jupiter/test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sizer/sizer.dart';
import 'helper/ayo.dart';
import 'screens/auth/auto_login.dart';
import 'screens/auth/forgot_password.dart';

import 'screens/auth/create_account.dart';
import 'screens/auth/signin.dart';
import 'screens/category/categories_grid.dart';
import 'screens/discover/home.dart';
import 'screens/landing_screen.dart';
import 'screens/product/test_product.dart';
import 'services/test_service.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final GlobalKey<NavigatorState> navigatorKey =
      new GlobalKey<NavigatorState>();
  dynamic initScreen;
  Timer _timer;

  Future checkFirstSeen() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool _seen = (prefs.getBool('seen') ?? false);

    if (_seen) {
      Navigator.of(context).pushReplacement(
          new MaterialPageRoute(builder: (context) => TabView()));
    } else {
      await prefs.setBool('seen', true);
      Navigator.of(context).pushReplacement(
          new MaterialPageRoute(builder: (context) => LandingScreen()));
    }
  }

  // @override
  // void afterFirstLayout(BuildContext context) => checkFirstSeen();

  // Future intest() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   setState(() {
  //     initScreen = prefs.getInt("initScreen");
  //   });
  // }

  @override
  void initState() {
    super.initState();
    checkFirstSeen().whenComplete(() => null);
    //intest().whenComplete(() => null);

    // _initializeTimer();
  }

  // void _initializeTimer() {
  //   // print('Timer Starts !!!');
  //   _timer = Timer.periodic(Duration(seconds: 10), (_) => _logOutUser());
  // }

  // _logOutUser() {
  //   // Log out the user if they're logged in, then cancel the timer.
  //   // You'll have to make sure to cancel the timer if the user manually logs out
  //   //   and to call _initializeTimer once the user logs in
  //   // print('Timer Stops !!!');
  //   Navigator.push(
  //       context, MaterialPageRoute(builder: (context) => AutoLoginPage()));
  //   _timer.cancel();
  // }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MultiProvider(
        providers: [
          ChangeNotifierProvider<UserDetails>(create: (_) => UserDetails()),
          ChangeNotifierProvider(create: (_) => AuthProvider()),
          ChangeNotifierProvider(create: (_) => UserProvider())
        ],

        // Sizer(builder: (context, orientation, deviceType) {
        child: MaterialApp(
          //home: initScreen != ? AutoLoginPage() : LandingScreen(),
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            fontFamily: 'TT Norms Pro',
            primarySwatch: Colors.blue,
          ),

          //initialRoute: initScreen != null ? '/' : '/onbo',
          // initialRoute: initScreen !=null ? '/' : '/onboardPage',
          routes: <String, WidgetBuilder>{
            '/': (context) => Splash(),
           //  '/': (context) => ForgotPage(),
            '/payment': (context) => CardSelection(),
            '/forgetPage': (context) => ForgotPage(),
            // '/': (context) => SplashScreenPage(),
            './tabPage': (context) => TabView(),
            '/home': (context) => HomesCreen(),
            '/onboardPage': (context) => LandingScreen(),
            '/loginPage': (context) => LoginPage(),
            '/createAccount': (context) => CreateAccount(),
            '/forgot_password': (context) => ForgotPassword(),
            '/profilePage': (context) => Profile(),
            '/editProfile': (context) => EditProfile(),
            '/categoryPage': (context) => CategoryGridPage(),
            '/cartPage': (context) => CartPage(),
            '/orderPage': (context) => OrdersPage(),
          //  '/test': (context) => TestPage(),
            //'/forgot_password': (context) => ForgotPassword(),

            // '/signIn': (context) => SigninPage(),
          },
        ));
  }
}
