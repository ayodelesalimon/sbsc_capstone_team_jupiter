import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:sbsc_capstone_team_jupiter/constants.dart';
import 'package:sbsc_capstone_team_jupiter/model/login.dart';
import 'package:sbsc_capstone_team_jupiter/screens/home/home.dart';
import 'package:sbsc_capstone_team_jupiter/screens/tab_controller.dart';
import 'package:sbsc_capstone_team_jupiter/services/auth.dart';
import 'package:sbsc_capstone_team_jupiter/widgets/alert.dart';
import 'package:sbsc_capstone_team_jupiter/widgets/colors.dart';
import 'package:sbsc_capstone_team_jupiter/widgets/input.dart';
import 'package:sbsc_capstone_team_jupiter/widgets/loader.dart';
import 'package:validators/validators.dart' as validator;

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
  final _formKey = GlobalKey<FormState>();

  TextEditingController email = TextEditingController();

  TextEditingController password = TextEditingController();
  bool showObscureText = true;
  bool showObscureTextPassword = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                        errorText: 'password must be at least 8 digits long'),
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
                        settings: RouteSettings(name: "/forgot_password"),
                        builder: (context) => ForgotPassword(),
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
                      //FocusScope.of(context).unfocus();
                      if (_formKey.currentState.validate()) {
                        _formKey.currentState.save();
                        showLoader(context);
                        try {
                         final data = await Auth.userLogin(login);

                          Navigator.of(context).push(
                            MaterialPageRoute(
                              settings: RouteSettings(name: "/home"),
                              builder: (context) => TabView(),
                            ),
                          );
                          Loader.hide();
                        } catch (e) {
                          hideLoader();
                          Alert(
                            context: context,
                            content: e,
                            title: 'Login Error',
                          );
                        }
                      }

                      //  });
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
                    ),
                  ),
                ),
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
                  onTap: () {},
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
                                settings: RouteSettings(name: "/createAccount"),
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
}
