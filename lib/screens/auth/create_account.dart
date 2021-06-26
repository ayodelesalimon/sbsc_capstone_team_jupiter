import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:sbsc_capstone_team_jupiter/screens/auth/components/social_card.dart';
import 'package:sbsc_capstone_team_jupiter/widgets/colors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sbsc_capstone_team_jupiter/widgets/input.dart';
import 'package:validators/validators.dart' as validator;

import 'login.dart';


class CreateAccount extends StatefulWidget {
  final String name = 'createAccount';
  const CreateAccount({Key key}) : super(key: key);

  @override
  _CreateAccountState createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  var _formKey = GlobalKey<FormState>();
  bool showObscureText = true;
  bool showObscureTextPassword = true;
  bool showObscureTextPassword2 = true;
  TextEditingController email = TextEditingController();
  TextEditingController firstname = TextEditingController();
  TextEditingController lastname = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmpassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(right: 24, left: 24),
            child: Form(
                autovalidateMode: AutovalidateMode.always,
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          // margin: EdgeInsets.only(right: 24, left: 24),
                          //width: 64.w,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Create',
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 24,
                                  letterSpacing: 0.053,
                                  color: Color(0xff10151a),
                                ),
                              ),
                              Text(
                                'your account',
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
                          //  margin: EdgeInsets.only(right: 24),
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
                    Container(
                      child: Center(
                        child: Text(
                          '- OR REGISTER WITH MAIL -',
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
                      height: 14,
                    ),
                    Row(
                      children: [
                        Text(
                          'First Name',
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
                      controller: firstname,

                      hintText: 'First Name',

                      styleColor: primaryColor,
                      obscureText: false,
                      hintStyleColor: Color(0xFF7C7C7C),
                      // validator: (String value) {
                      //   if (!validator.isAlpha(value) && value.length < 1) {
                      //     return 'First Name is required';
                      //   }

                      // },
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    Row(
                      children: [
                        Text(
                          'Last Name',
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
                      height: 10,
                    ),
                    Input(
                      //focusNode: emailFocus,
                      controller: lastname,

                      hintText: 'Last Name',

                      styleColor: primaryColor,
                      obscureText: false,
                      hintStyleColor: Color(0xFF7C7C7C),
                      // validator: (String value) {
                      //   if (!validator.isAlpha(value) && value.length < 1) {
                      //     return 'First Name is required';
                      //   }

                      // },
                    ),
                    SizedBox(
                      height: 14,
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
                        //focusNode: emailFocus,
                        controller: password,
                        isPassword: true,
                        hintText: 'Password',
                        styleColor: primaryColor,
                        showObscureText: showObscureTextPassword,
                        isPasswordColor: Color(0xFF7C7C7C),
                        obscureText: showObscureTextPassword,
                        toggleEye: () {
                          setState(() {
                            showObscureTextPassword = !showObscureTextPassword;
                          });
                        },
                        hintStyleColor: Color(0xFF7C7C7C),
                        // hintStyleColor: Color(0xFF7C7C7C),
                        validator: MultiValidator([
                          RequiredValidator(errorText: 'password is required'),
                          MinLengthValidator(8,
                              errorText:
                                  'password must be at least 8 digits long'),
                          PatternValidator(r'(?=.*?[#?!@$%^&*-])',
                              errorText:
                                  'passwords must have at least one special character')
                        ])),
                    SizedBox(
                      height: 14,
                    ),
                    Row(
                      children: [
                        Text(
                          'Confirm Password',
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
                        controller: confirmpassword,
                        isPassword: true,
                        hintText: 'Confirm Password',
                        showObscureText: showObscureTextPassword2,
                        isPasswordColor: Color(0xFF7C7C7C),
                        obscureText: showObscureTextPassword2,
                        toggleEye: () {
                          setState(() {
                            showObscureTextPassword2 =
                                !showObscureTextPassword2;
                          });
                        },
                        styleColor: primaryColor,
                        hintStyleColor: Color(0xFF7C7C7C),
                        validator: MultiValidator([
                          RequiredValidator(errorText: 'password is required'),
                          MinLengthValidator(8,
                              errorText:
                                  'password must be at least 8 digits long'),
                          PatternValidator(r'(?=.*?[#?!@$%^&*-])',
                              errorText:
                                  'passwords must have at least one special character')
                        ])),
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            if (_formKey.currentState.validate()) {
                              print('perfect');
                            } else {
                              return null;
                            }
                          });
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
                              'Create Account',
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
                    Padding(
                      padding: const EdgeInsets.only(bottom: 25.0),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Have an account already?",
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
                                    settings: RouteSettings(name: "/loginPage"),
                                    builder: (context) => LoginPage(),
                                  ),
                                );
                              },
                              child: Text(
                                "Sign In",
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
                  ],
                )),
          ),
        ),
      ),
    );
  }
}
