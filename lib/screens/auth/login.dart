import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:sbsc_capstone_team_jupiter/constants.dart';
import 'package:sbsc_capstone_team_jupiter/model/auth/login.dart';
import 'package:sbsc_capstone_team_jupiter/screens/home/home.dart';
import 'package:sbsc_capstone_team_jupiter/screens/tab_controller.dart';
import 'package:sbsc_capstone_team_jupiter/services/auth.dart';
import 'package:sbsc_capstone_team_jupiter/services/base.dart';
import 'package:sbsc_capstone_team_jupiter/test.dart';
import 'package:sbsc_capstone_team_jupiter/widgets/alert.dart';
import 'package:sbsc_capstone_team_jupiter/widgets/colors.dart';
import 'package:sbsc_capstone_team_jupiter/widgets/input.dart';
import 'package:sbsc_capstone_team_jupiter/widgets/loader.dart';
import 'package:validators/validators.dart' as validator;
import 'package:http/http.dart' as http;
import 'components/social_card.dart';
import 'create_account.dart';
import 'forgot_password.dart';

class LoginPage extends StatefulWidget {
  final String name = 'loginPage';
  const LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  Login login = Login();
  int statusCode;
  Api apiK = Api();
  final _formKey = GlobalKey<FormState>();
  final GlobalKey<State> _keyLoader = new GlobalKey<State>();
  final _globalKey = GlobalKey<ScaffoldMessengerState>();

  TextEditingController email = TextEditingController();

  TextEditingController password = TextEditingController();
  bool showObscureText = true;
  bool showObscureTextPassword = true;
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 1)).then((_) => _displaySnackbar);
  }

// Display Snackbar
  void get _displaySnackbar {
    _globalKey.currentState.showSnackBar(SnackBar(
        duration: Duration(minutes: 1),
        content: Text('Your snackbar message')));
  }

  Future<Login> createAlbum(String email, String password) async {
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

    if (response.statusCode == 200) {
      // If the server did return a 201 CREATED response,
      // then parse the JSON.
      print(response.body);
      return Login.fromJson(jsonDecode(response.body));
    } else {
      // If the server did not return a 201 CREATED response,
      // then throw an exception.
      throw Exception('Failed to create album.');
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
                                'Sign In',
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 24,
                                  letterSpacing: 0.053,
                                  color: Color(0xff10151a),
                                ),
                              ),
                              Text(
                                ' to your account',
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 24,
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
                    Row(
                      children: [
                        Text(
                          'Email Address',
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
                      //focusNode: emailFocus,
                      controller: email,

                      hintText: 'Email Address',

                      styleColor: primaryColor,
                      obscureText: false,
                      hintStyleColor: Color(0xFF7C7C7C),
                      validator: (String value) {
                        if (!validator.isEmail(value) && value.length < 1) {
                          return 'Email Address is required';
                        }
                      },
                      onSaved: (String value) {
                        login.email = value;
                      },
                    ),
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
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            settings: RouteSettings(name: "/test"),
                            builder: (context) => TestPage(),
                          ),
                        );
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
                                if (login.password.length < 1 ||
                                    login.email.length < 1) {
                                  print("object");
                                }
                                print(email.text);
                                await createAlbum(email.text, password.text);
                               Navigator.of(context).push(
                                  MaterialPageRoute(
                                    settings: RouteSettings(name: "/tabPage"),
                                    builder: (context) => TabView(),
                                  ),
                                );
                              } else {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    settings: RouteSettings(name: "/test"),
                                    builder: (context) => TestPage(),
                                  ),
                                );
                              }

                              // FocusScope.of(context).unfocus();
                              // if (_formKey.currentState.validate()) {
                              //   _formKey.currentState.save();
                              //   showLoader(context);
                              //   try {
                              //     final loginData = await Auth.userLogin(login);

                              //           //if(loginData['statusCode'] == 200){

                              //          // }

                              //     Loader.hide();

                              //   } catch (e) {
                              //     hideLoader();
                              //     Alert(
                              //       context: context,
                              //       content: e,
                              //       title: 'Login Error',
                              //     );
                              //   }
                              // }

                              // await signInMethod(
                              //     email.value.text, password.value.text);
                              // print(email.value.text);
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
    );
  }

  signInMethod(String email, String password) async {
    String url = "https://aduabaecommerceapi.azurewebsites.net/login";
    var response = await http
        .post(Uri.parse(url), body: {"email": email, "password": password});

    var jsonResponse;

    if (response.statusCode == 200) {
      jsonResponse = json.decode(response.body);
      if (jsonResponse != null) {
        print(jsonResponse['token']);
        print(jsonResponse['message']); // for Printing the token

        // Navigator used to enter inside app if the authentication is correct
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(
              builder: (BuildContext context) => TabView(),
            ),
            (Route<dynamic> route) => false);
      }
    } else {
      //_displaySnackbar;
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: new Text("Error!!"),
            content: new Text("Error message like email or password wrong!!!!"),
            actions: <Widget>[
              new FlatButton(
                child: new Text("OK"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
      print("Error message like email or password wrong!!!!"); // T
      print(jsonResponse['token']);
      print('hhhhhh>>>>> ${jsonResponse.message}'); // fooast
    }
  }
}
