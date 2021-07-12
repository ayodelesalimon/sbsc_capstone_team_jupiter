import 'dart:convert';
import 'dart:ui';

import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:provider/provider.dart';
import 'package:sbsc_capstone_team_jupiter/util/constants.dart';
import 'package:sbsc_capstone_team_jupiter/model/auth/login.dart';
import 'package:sbsc_capstone_team_jupiter/screens/tab_controller.dart';
import 'package:sbsc_capstone_team_jupiter/services/auth.dart';
import 'package:sbsc_capstone_team_jupiter/services/base.dart';
import 'package:sbsc_capstone_team_jupiter/services/check_connection.dart';
import 'package:sbsc_capstone_team_jupiter/widgets/alert.dart';
import 'package:sbsc_capstone_team_jupiter/widgets/colors.dart';
import 'package:sbsc_capstone_team_jupiter/widgets/input.dart';
import 'package:sbsc_capstone_team_jupiter/widgets/loader.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:validators/validators.dart' as validator;
import 'package:http/http.dart' as http;
import 'components/social_card.dart';
import 'create_account.dart';

class AutoLoginPage extends StatefulWidget {
  final String name = 'AutoLoginPage';
  const AutoLoginPage({Key key}) : super(key: key);

  @override
  _AutoLoginPageState createState() => _AutoLoginPageState();
}

class _AutoLoginPageState extends State<AutoLoginPage> {
  Login login = Login();
  int statusCode;
  Api apiK = Api();
  CheckConnection _checkConnection = CheckConnection();
  final _formKey = GlobalKey<FormState>();
  final GlobalKey<State> _keyLoader = new GlobalKey<State>();
  final _globalKey = GlobalKey<ScaffoldMessengerState>();

  TextEditingController email = TextEditingController();

  TextEditingController password = TextEditingController();
  bool showObscureText = true;
  bool showObscureTextPassword = true;
  String userFirstName = '';
  String userEmail = '';
  String userLastName = '';

  Future<void> getFirstNameFromLocalStorage() async {
    final data = await getFromLocalStorage(name: 'firstName');
    setState(() {
      userFirstName = data;
    });
  }

  Future<void> getEmailFromLocalStorage() async {
    final data = await getFromLocalStorage(name: 'email');
    setState(() {
      userEmail = data;
    });
  }

  Future<void> getLastNameFromLocalStorage() async {
    final data = await getFromLocalStorage(name: 'lastName');
    setState(() {
      userLastName = data;
    });
  }
 Future<bool> _onWillPop() async {
    return (await showDialog(
          context: context,
          builder: (context) => BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 6, sigmaY: 6),
            child: new AlertDialog(
              title: new Text(
                'Exit App',
                style: TextStyle(color: Color(0xFFFF9E00)),
              ),
              content: new Text(
                'Do you want to exit the App?',
                style: TextStyle(color: primaryColor),
              ),
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(15)),
              actions: <Widget>[
                FlatButton(
                  child: new Text(
                    'Yes',
                    style: TextStyle(color: primaryColor),
                  ),
                  onPressed: () {
                    SystemNavigator.pop();
                  },
                ),
                FlatButton(
                  child: new Text(
                    'No',
                    style: TextStyle(color: Color(0xFFFF9E00)),
                  ),
                  onPressed: () {
                    Navigator.of(context).pop(false);
                  },
                ),
              ],
            ),
          ),
        )) ??
        false;
  }
  @override
  void initState() {
    super.initState();

    getFirstNameFromLocalStorage().whenComplete(() => null);
    getEmailFromLocalStorage().whenComplete(() => null);
    getLastNameFromLocalStorage().whenComplete(() => null);
  }
  

  Future<Login> loginUser(String email, String password) async {
    bool internetConnection =
        await _checkConnection.checkInternetConnectivity();
    if (internetConnection) {
      final response = await http.post(
        Uri.parse('https://aduabaecommerceapi.azurewebsites.net/login'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(<String, String>{
          'email': email,
          'password': password,
        }),
      );
      dynamic decodedResponse = jsonDecode(response.body);

      if (response.statusCode == 200) {
        if (decodedResponse['isSuccess'] == true) {
          print(decodedResponse['data']['token']);
          //SharedPreferences prefs = await SharedPreferences.getInstance();
          // await prefs.setInt("initScreen", 1);

          Navigator.of(context).push(
            MaterialPageRoute(
              settings: RouteSettings(name: "/tabPage"),
              builder: (context) => TabView(),
            ),
          );
          await decodeAndStoreToken(data: decodedResponse);
        } else {
          print(decodedResponse['message']);
          Alert(
            context: context,
            content: decodedResponse['message'],
            title: 'Login Error',
          );
          // showDialog(
          //   context: context,
          //   builder: (ctx) => AlertDialog(
          //     title: Text("Alert"),
          //     content: Text(decodedResponse['message']),
          //     actions: <Widget>[
          //       FlatButton(
          //         onPressed: () {
          //           Navigator.of(ctx).pop();
          //         },
          //         child: Text("okay"),
          //       ),
          //     ],
          //   ),
          // );
        }
        // If the server did return a 201 CREATED response,
        // then parse the JSON.
        print(response.body);

        //  return Login.fromJson(jsonDecode(response.body));
      } else {
        print(response.statusCode);

        // If the server did not return a 201 CREATED response,
        // then throw an exception.

      }
    } else {
      internetConnectionDialog(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: SafeArea(
        child: Scaffold(
            key: _globalKey,
            body: SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.only(left: 24, right: 24),
                child: Form(
                    key: _formKey,
                    autovalidateMode: AutovalidateMode.always,
                    child: Column(children: [
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Welcome back! $userFirstName',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontStyle: FontStyle.normal,
                                    fontSize: 24,
                                    letterSpacing: 0.053,
                                    color: Color(0xff10151a),
                                  ),
                                ),
                                Text(
                                   'Kindly enter your password to login ',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w200,
                                    fontStyle: FontStyle.normal,
                                    fontSize: 18,
                                    letterSpacing: 0.053,
                                    color: Color(0xff10151a),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 50.3,
                            height: 50.15,
                            child: CircleAvatar(
                              backgroundColor: Color.fromRGBO(58, 149, 60, 0.1),
                              child: Image.asset(
                                'assets/images/user.png',
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      
                     
                     // SizedBox(height: 40),
                      SizedBox(
                        height: 14,
                      ),
                      Row(
                        children: [
                          Text(
                            'Password',
                            style: TextStyle(
                              color: Color(0xff10151a),
                              fontSize: 15,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 14,
                      ),
                      Input(
                        isPassword: true,
                        //focusNode: emailFocus,
                        controller: password,
                        showObscureText: showObscureTextPassword,
                        isPasswordColor: Color(0xFF7C7C7C),
                        obscureText: showObscureTextPassword,
                        toggleEye: () {
                          setState(() {
                            showObscureTextPassword = !showObscureTextPassword;
                          });
                        },
                        hintStyleColor: Color(0xFF7C7C7C),
                        hintText: 'Password',
                        styleColor: primaryColor,
                        validator: MultiValidator([
                          RequiredValidator(errorText: 'password is required'),
                          MinLengthValidator(8,
                              errorText:
                                  'password must be at least 8 digits long'),
                          PatternValidator(r'(?=.*?[#?!@$%^&*-])',
                              errorText:
                                  'passwords must have at least one special character')
                        ]),
                        onSaved: (String value) {
                          login.password = value;
                        },
                      ),
                      spacer10,
                      GestureDetector(
                        onTap: () {
                          // Navigator.of(context).push(
                          //   MaterialPageRoute(
                          //     settings: RouteSettings(name: "/test"),
                          //     builder: (context) => TestPage(),
                          //   ),
                          // );
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "Forgot Password?",
                              style: TextStyle(color: lightGrey, fontSize: 14),
                            )
                          ],
                        ),
                      ),
                      spacer20,
                      Center(
                          child: GestureDetector(
                              onTap: () async {
                                if (_formKey.currentState.validate()) {
                                  _formKey.currentState.save();
                                  showLoader(context);
                                  await loginUser(userEmail, password.text);
                                  Loader.hide();
                                } else {
                                  print("Failed");
                                }
                              },
                              child: Container(
                                width: 360,
                                height: 52,
                                decoration: BoxDecoration(
                                  color: Color(0xff3a953c),
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                child: Center(
                                  child: Text(
                                    'Login',
                                    style: TextStyle(
                                      color: Color(0xffffffff),
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                                margin: EdgeInsets.only(bottom: 2.95),
                              ))),
                      SizedBox(
                        height: 14,
                      ),
                      Container(
                        child: Center(
                          child: Text(
                            '- OR SIGN IN WITH SOCIALS -',
                            style: TextStyle(
                              color: Color(0xff999999),
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w500,
                              fontSize: 13,
                            ),
                          ),
                        ),
                        margin: EdgeInsets.only(bottom: 2.95),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SocialLogin(
                        width: 2.0,
                        name: 'Register with Google',
                        textColor: Color(0xff10151a),
                        cardColor: Colors.white,
                        onTap: () {},
                        icon: FontAwesomeIcons.google,
                        fontColor: Color(0xff000000),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SocialLogin(
                        width: 0.0,
                        name: 'Register with Facebook ',
                        textColor: Color(0xffffffff),
                        cardColor: Color(0xff3D5B96),
                        fontColor: Color(0xffffffff),
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              settings: RouteSettings(name: "/createAccount"),
                              builder: (context) => CreateAccount(),
                            ),
                          );
                        },
                        icon: FontAwesomeIcons.facebook,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SocialLogin(
                        width: 0.0,
                        name: 'Sign in Apple ID ',
                        textColor: Color(0xffffffff),
                        fontColor: Color(0xffffffff),
                        cardColor: Color(0xff000000),
                        onTap: () {},
                        icon: FontAwesomeIcons.apple,
                      ),
                      SizedBox(
                        height: 14,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 25.0),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Don’t have an account? ',
                                softWrap: true,
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      settings:
                                          RouteSettings(name: "/createAccount"),
                                      builder: (context) => CreateAccount(),
                                    ),
                                  );
                                },
                                child: Text(
                                  "Get Started",
                                  softWrap: true,
                                  style: TextStyle(
                                    color: primaryColor,
                                    fontWeight: FontWeight.w800,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ])),
              ),
            )),
      ),
    );
  }
}
