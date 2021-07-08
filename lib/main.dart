import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:sbsc_capstone_team_jupiter/screens/account/edit_profile.dart';
import 'package:sbsc_capstone_team_jupiter/screens/account/profile.dart';
import 'package:sbsc_capstone_team_jupiter/screens/auth/login.dart';
import 'package:sbsc_capstone_team_jupiter/screens/cart/cart.dart';

import 'package:sbsc_capstone_team_jupiter/screens/home/home.dart';
import 'package:sbsc_capstone_team_jupiter/screens/order/account_order.dart';
import 'package:sbsc_capstone_team_jupiter/screens/splash_screen.dart';
import 'package:sbsc_capstone_team_jupiter/screens/tab_controller.dart';
import 'package:sbsc_capstone_team_jupiter/splash_screen.dart';
import 'package:sbsc_capstone_team_jupiter/test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sizer/sizer.dart';
import 'screens/auth/forgot_password.dart';

import 'screens/auth/create_account.dart';
import 'screens/category/categories_grid.dart';
import 'screens/discover/home.dart';
import 'screens/landing_screen.dart';
import 'screens/product/test_product.dart';

bool firstTime;

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  firstTime = (prefs.getBool('initScreen') ?? false);
  if(!firstTime){
    prefs.setBool('initScreen', true);
  }
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MyApp()
  );
}

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
        initialRoute: firstTime ? '/': '/onboardPage',
        routes: <String, WidgetBuilder>{
        //  '/': (context) => TestProduct(),
         '/': (context) => SplashScreenPage(),
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
          '/test': (context) => TestPage()

          // '/signIn': (context) => SigninPage(),
        },
      );
    });
  }
}
