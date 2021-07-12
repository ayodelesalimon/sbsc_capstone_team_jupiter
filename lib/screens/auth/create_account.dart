import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:sbsc_capstone_team_jupiter/model/auth/register.dart';
import 'package:sbsc_capstone_team_jupiter/screens/auth/components/social_card.dart';
import 'package:sbsc_capstone_team_jupiter/services/auth.dart';
import 'package:sbsc_capstone_team_jupiter/widgets/alert.dart';
import 'package:sbsc_capstone_team_jupiter/widgets/colors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sbsc_capstone_team_jupiter/widgets/input.dart';
import 'package:sbsc_capstone_team_jupiter/widgets/loader.dart';
import 'package:validators/validators.dart' as validator;
import 'package:flushbar/flushbar.dart';
import 'package:http/http.dart' as http;

import 'login.dart';

class CreateAccount extends StatefulWidget {
  final String name = 'createAccount';
  const CreateAccount({Key key}) : super(key: key);

  @override
  _CreateAccountState createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  var _formKey = GlobalKey<FormState>();
  Register register = Register();
  bool showObscureText = true;
  bool showObscureTextPassword = true;
  bool showObscureTextPassword2 = true;
  TextEditingController email = TextEditingController();
  TextEditingController firstname = TextEditingController();
  TextEditingController lastname = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmpassword = TextEditingController();
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  bool loading;

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    //  controller.dispose();
    email.dispose();
    password.dispose();
    firstname.dispose();
    lastname.dispose();
    confirmpassword.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(right: 24, left: 24),
            child: Form(
                key: _formKey,
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
                      onTap: () {},
                      icon: FontAwesomeIcons.facebook,
                    ),
                     SizedBox(
                      height: 20,
                    ),
                    SocialLogin(
                      width: 2.0,
                      name: 'Sign in with Apple ID',
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
                      validator: (String value) {
                        if (!validator.isAlpha(value) && value.length < 1) {
                          return 'First Name is required';
                        }
                        return null;
                      },

                      onSaved: (String value) {
                        register.firstName = value;
                      },
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
                      validator: (String value) {
                        if (!validator.isAlpha(value) && value.length < 1) {
                          return 'Last Name is required';
                        }
                        return null;
                      },
                      onSaved: (String value) {
                        register.lastName = value;
                      },
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
                        return null;
                      },
                      onSaved: (String value) {
                        register.email = value;
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
                      ]),
                      onSaved: (String value) {
                        register.password = value;
                      },
                    ),
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
                          showObscureTextPassword2 = !showObscureTextPassword2;
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
                      ]),

                      onSaved: (String value) {
                        register.confirmPassword = value;
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: GestureDetector(
                        onTap: () async {
                          if (_formKey.currentState.validate()) {
                            _formKey.currentState.save();
                            showLoader(context);
                            await registerUser(
                                firstname.text,
                                lastname.text,
                                email.text,
                                password.text,
                                confirmpassword.text);
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

  Future<Register> registerUser(String firstName, String lastName, String email, String password, String confirmPassword,) async {
    final response = await http.post(
      Uri.parse('https://aduabaecommerceapi.azurewebsites.net/register-user'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'firstName': firstName,
        'lastName': lastName,
        'email': email,
        'password': password,
        'confirmPassword': confirmPassword,
      }),
    );
    dynamic decodedResponse = jsonDecode(response.body);

    if (response.statusCode == 200) {
      if (decodedResponse['status'] == "Success") {
        Navigator.of(context).push(
          MaterialPageRoute(
            settings: RouteSettings(name: "/loginPage"),
            builder: (context) => LoginPage(),
          ),
        );
      } else {
        print(decodedResponse['message']);
        Alert(
          context: context,
          content: decodedResponse['message'],
          title: 'Login Error',
        );
        
      }
      // If the server did return a 201 CREATED response,
      // then parse the JSON.
      print(response.body);

      //  return Login.fromJson(jsonDecode(response.body));
    } else {
      print(response.statusCode);
       Alert(
          context: context,
          content: decodedResponse['message'],
          title: 'Error',
        );

      // If the server did not return a 201 CREATED response,
      // then throw an exception.

    }
  }
}
