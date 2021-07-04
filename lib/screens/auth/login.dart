import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:sbsc_capstone_team_jupiter/constants.dart';
import 'package:sbsc_capstone_team_jupiter/model/login.dart';
import 'package:sbsc_capstone_team_jupiter/screens/home/home.dart';
import 'package:sbsc_capstone_team_jupiter/services/auth.dart';
import 'package:sbsc_capstone_team_jupiter/widgets/alert.dart';
import 'package:sbsc_capstone_team_jupiter/widgets/colors.dart';
import 'package:sbsc_capstone_team_jupiter/widgets/input.dart';
import 'package:sbsc_capstone_team_jupiter/widgets/loader.dart';
import 'package:validators/validators.dart' as validator;
import 'package:sbsc_capstone_team_jupiter/size_config.dart';

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
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        width: SizeConfig.screenWidth,
        height: SizeConfig.screenHeight,
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 24),
          child: Form(
              key: _formKey,
              // autovalidateMode: AutovalidateMode.always,
              child: ListView(children: [
                SafeArea(
                  child: SizedBox(
                    height: 40,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 327,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Sign In',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.normal,
                              fontSize: 24,
                              // letterSpacing: 0.053,
                              color: Color(0xff10151a),
                            ),
                          ),
                          Text(
                            ' to your account',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.normal,
                              fontSize: 24,
                              // letterSpacing: 0.053,
                              color: Color(0xff10151a),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      //  margin: EdgeInsets.only(right: 24),
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromRGBO(58, 149, 60, 0.1),
                      ),
                      child: Center(child: Image.asset('assets/images/user.png', width: 16,height: 16,)),
                    ),
                  ],
                ),
                SizedBox(
                  height: 48,
                ),
                Row(
                  children: [
                    Text(
                      'Email Address',
                      style: TextStyle(
                        color: Color(0xff10151a),
                        fontSize: 15,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Input(
                  //focusNode: emailFocus,
                  controller: email,

                  hintText: 'Email Address',

                  styleColor: primaryColor,
                  obscureText: false,
                  hintStyleColor: Color(0xFFbababa),
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
                  height: 16,
                ),
                Text(
                  'Password',
                  style: TextStyle(
                    color: Color(0xff10151a),
                    fontSize: 15,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Input(
                  isPassword: true,
                  //focusNode: emailFocus,
                  controller: password,
                  showObscureText: showObscureTextPassword,
                  isPasswordColor: Color(0xFFbababa),
                  obscureText: showObscureTextPassword,
                  toggleEye: () {
                    setState(() {
                      showObscureTextPassword = !showObscureTextPassword;
                    });
                  },
                  hintStyleColor: Color(0xFFbababa),
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
                SizedBox(height: 16,),
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
                        style: TextStyle(color:Color(0xff819272), fontSize: 13, fontWeight: FontWeight.w500),
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
                              builder: (context) => HomesCreen(),
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
                      width: 327,
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
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 24,
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
                ),
                SizedBox(
                  height: 24,
                ),
                SocialLogin(
                  title: 'Sign in Apple ID',
                  textColor: Color(0xffffffff),
                  cardColor:Color(0xff000000),
                  onTap: () {},
                  image: 'assets/images/apple.png',
                  imgheight: 19.5,
                  imgwidth: 16.38,
                  marginright: 13.8,
                ),
                SizedBox(
                  height: 16,
                ),
                SocialLogin(
                  title: 'Sign in with Google',
                  textColor: Color(0xff000000),
                  cardColor: Color(0xffffffff),
                  onTap: () {},
                  image: 'assets/images/google.png',
                  imgwidth: 17.46,
                  imgheight: 17.87,
                  marginright: 13.51,
                  borderWidth: 1,
                ),
                SizedBox(
                  height: 16,
                ),
                SocialLogin(
                  title: 'Sign in with Facebook',
                  textColor: Color(0xffffffff),
                  cardColor: Color(0xff3D5B96),
                  onTap: () {},
                  image: 'assets/images/facebook.png',
                  imgwidth: 9.34,
                  imgheight: 18,
                  marginright: 17.33,
                ),
                SizedBox(
                  height: 24,
                ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don’t have an account? ',
                        softWrap: true,
                        style: TextStyle(
                          color: Color(0xff999999),
                          fontSize: 14,
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
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ])),
        ),
      ),
    ));
  }
}
