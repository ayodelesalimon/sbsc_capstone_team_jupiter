import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sbsc_capstone_team_jupiter/constants.dart';
import 'package:sbsc_capstone_team_jupiter/widgets/colors.dart';
import 'package:otp_text_field/style.dart';
import 'package:sbsc_capstone_team_jupiter/widgets/input.dart';
import 'package:sizer/sizer.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:form_field_validator/form_field_validator.dart';

import 'login.dart';

class ForgotPassword extends StatefulWidget {
  final String name = "forgot_password";
  const ForgotPassword({Key key}) : super(key: key);

  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  var _formKey = GlobalKey<FormState>();

  bool showObscureText = true;
  bool showObscureTextPassword = true;
    bool showObscureTextPassword2 = true;
  final FocusNode emailFocus = FocusNode();
  final FocusNode passwordFocus = FocusNode();
  TextEditingController password = TextEditingController();
  TextEditingController confirmpassword = TextEditingController();
  @override
  void dispose() {
    password.dispose();
    confirmpassword.dispose();
    emailFocus.dispose();
    passwordFocus.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 24, left: 24),
                      //width: 64.w,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Forgot Password',
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
                      margin: EdgeInsets.only(right: 24),
                      width: 50.3,
                      height: 50.15,
                      child: CircleAvatar(
                        backgroundColor: Color.fromRGBO(58, 149, 60, 0.1),
                        child: Image.asset(
                          'assets/images/lock.png',
                          width: 54.26,
                          height: 50.97,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Text(
                    'Select what contact details we use to reset your password',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontStyle: FontStyle.normal,
                      fontSize: 17,
                      color: Color(0xff999999),
                    ),
                  ),
                  margin: EdgeInsets.only(left: 24, right: 24, bottom: 24),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 3.57),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 24),
                          width: 50.3,
                          height: 50.15,
                          child: CircleAvatar(
                            backgroundColor: Color.fromRGBO(58, 149, 60, 0.1),
                            child: Image.asset(
                              'assets/phone.png',
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          height: 40,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'via sms',
                                style: TextStyle(
                                    color: Color(0xff10151A),
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                '*** **** 7767',
                                style: TextStyle(
                                    color: Color(0xff999999),
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal),
                              ),
                            ],
                          ),
                          margin: EdgeInsets.only(right: 14),
                        ),
                        SizedBox(
                          width: 150,
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 5),
                          width: 35,
                          height: 20,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            shape: BoxShape.circle,
                          ),
                          // child: Image.asset(
                          //   'assets/images/Oval.png',
                          //   width: 4.26.w,
                          //   height:1.97.h,
                          //   color: Colors.black
                          // ),
                        ),
                      ]),
                ),
                spacer10,
                Container(
                  child: Divider(
                    thickness: 1,
                    color: Colors.grey,
                  ),
                  margin: EdgeInsets.only(left: 40, right: 40),
                ),
                spacer20,
                Container(
                  margin: EdgeInsets.only(bottom: 3.57),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 24),
                          width: 50.3,
                          height: 50.15,
                          child: CircleAvatar(
                            backgroundColor: Color.fromRGBO(58, 149, 60, 0.1),
                            child: Image.asset(
                              'assets/images/mail.png',
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          height: 40,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'via email',
                                style: TextStyle(
                                    color: Color(0xff10151A),
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                '*@gmail.com',
                                style: TextStyle(
                                    color: Color(0xff999999),
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal),
                              ),
                            ],
                          ),
                          margin: EdgeInsets.only(right: 14),
                        ),
                        SizedBox(
                          width: 150,
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 5),
                          width: 35,
                          height: 20,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            shape: BoxShape.circle,
                          ),
                          // child: Image.asset(
                          //   'assets/images/Oval.png',
                          //   width: 4.26.w,
                          //   height:1.97.h,
                          //   color: Colors.black
                          // ),
                        ),
                      ]),
                ),
              ],
            ),

            //SizedBox(height: 300,),

            Center(
              child: GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return SingleChildScrollView(
                          child: Container(
                            margin: EdgeInsets.only(left: 24, right: 24),
                            height: MediaQuery.of(context).size.height / 2,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  // margin: EdgeInsets.only(left: 24, right: 24),
                                  child: Column(
                                    children: [
                                      spacer30,
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10.0, right: 5.0),
                                        child: Row(
                                          // crossAxisAlignment: CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Enter 4 Digits Code',
                                              style: TextStyle(
                                                fontSize: 24,
                                                color: Color(0xff3C673D),
                                                fontWeight: FontWeight.bold,
                                                fontStyle: FontStyle.normal,
                                              ),
                                            ),
                                            //  SizedBox(width: 100,),
                                            IconButton(
                                                icon: FaIcon(
                                                  FontAwesomeIcons.times,
                                                  size: 30,
                                                ),
                                                onPressed: () {
                                                  Navigator.of(context).pop();
                                                }),

                                            //   FaIcon(FontAwesomeIcons.times)
                                          ],
                                        ),
                                      ),
                                      spacer20,
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Enter the four digits code set to your email address',
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: Color(0xff999999),
                                              fontWeight: FontWeight.normal,
                                              fontStyle: FontStyle.normal,
                                            ),
                                          ),
                                          spacer5,
                                          Text(
                                            'to your email address',
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: Color(0xff999999),
                                              fontWeight: FontWeight.normal,
                                              fontStyle: FontStyle.normal,
                                            ),
                                          ),
                                        ],
                                      ),
                                      spacer30,
                                      Center(
                                        child: Container(
                                          margin: EdgeInsets.only(bottom: 20),
                                          child: OTPTextField(
                                            otpFieldStyle: OtpFieldStyle(
                                              backgroundColor:
                                                  Color(0xfff7f7f7),
                                            ),
                                            width: 327,
                                            length: 4,
                                            fieldWidth: 75.75,
                                            fieldStyle: FieldStyle.box,
                                            // length: 4,
                                            // width: double.infinity,
                                            // fieldWidth: 20.2.w,
                                            textFieldAlignment:
                                                MainAxisAlignment.center,
                                            style: TextStyle(
                                              fontSize: 15,
                                              color: Color(0xff10151A),
                                            ),
                                            onChanged: (pin) {
                                              print('Changed:' + pin);
                                            },
                                            onCompleted: (pin) {
                                              print('Completed:' + pin);
                                            },
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Center(
                                  child: GestureDetector(
                                    onTap: () {
                                      showModalBottomSheet(
                                          context: context,
                                          builder: (context) {
                                            return SingleChildScrollView(
                                              child: Container(
                                                margin: EdgeInsets.only(
                                                    left: 24, right: 24),
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height /
                                                    2,
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .start,
                                                  children: <Widget>[
                                                    Container(
                                                      // margin: EdgeInsets.only(left: 24, right: 24),
                                                      child: Column(
                                                        children: [
                                                          spacer10,
                                                          Row(
                                                            // crossAxisAlignment: CrossAxisAlignment.center,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              Text(
                                                                'Reset Password',
                                                                style:
                                                                    TextStyle(
                                                                  fontSize: 24,
                                                                  color: Color(
                                                                      0xff3C673D),
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontStyle:
                                                                      FontStyle
                                                                          .normal,
                                                                ),
                                                              ),
                                                              //  SizedBox(width: 100,),
                                                              IconButton(
                                                                  icon: FaIcon(
                                                                    FontAwesomeIcons
                                                                        .times,
                                                                    size: 30,
                                                                  ),
                                                                  onPressed:
                                                                      () {
                                                                    Navigator.of(
                                                                            context)
                                                                        .pop();
                                                                  }),

                                                              //   FaIcon(FontAwesomeIcons.times)
                                                            ],
                                                          ),
                                                          spacer20,
                                                          Row(
                                                            children: [
                                                              Text(
                                                                'Set the new password for your account',
                                                                style:
                                                                    TextStyle(
                                                                  fontSize: 14,
                                                                  color: Color(
                                                                      0xff999999),
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                  fontStyle:
                                                                      FontStyle
                                                                          .normal,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          spacer5,
                                                          Row(
                                                            children: [
                                                              Text(
                                                                ' so you can login and access the features',
                                                                style:
                                                                    TextStyle(
                                                                  fontSize: 14,
                                                                  color: Color(
                                                                      0xff999999),
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                  fontStyle:
                                                                      FontStyle
                                                                          .normal,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          spacer20,
                                                          Form(
                                                            key: _formKey,
                                                            child: Container(
                                                              // margin: EdgeInsets.only(right: 24, left: 24),
                                                              child: Column(
                                                                  //crossAxisAlignment: CrossAxisAlignment.start,
                                                                  children: [
                                                                    Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Text(
                                                                          'Password',
                                                                          style:
                                                                              TextStyle(
                                                                            color:
                                                                                Color(0xff10151a),
                                                                            fontSize:
                                                                                15,
                                                                            fontStyle:
                                                                                FontStyle.normal,
                                                                            fontWeight:
                                                                                FontWeight.w700,
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    spacer5,
                                                                    Input(
                                                                      //  focusNode: passwordFocus,
                                                                      // controller:
                                                                      //     password,
                                                                      hintText:
                                                                          'Password',
                                                                      isPassword:
                                                                          true,
                                                                      showObscureText:
                                                                          showObscureTextPassword,
                                                                      styleColor:
                                                                          Color(
                                                                              0xFF7C7C7C),
                                                                      isPasswordColor:
                                                                          Color(
                                                                              0xFF7C7C7C),
                                                                      obscureText:
                                                                          showObscureTextPassword,
                                                                      toggleEye:
                                                                          () {
                                                                        setState(
                                                                            () {
                                                                          showObscureTextPassword =
                                                                              !showObscureTextPassword;
                                                                        });
                                                                      },
                                                                      hintStyleColor:
                                                                          Color(
                                                                              0xFF7C7C7C),
                                                                      validator:
                                                                          (String
                                                                              value) {
                                                                        if (value.length <
                                                                            1) {
                                                                          return 'enter your password';
                                                                        }
                                                                        return null;
                                                                      },
                                                                    ),
                                                                    spacer20,
                                                                    Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Text(
                                                                          'Confirm Password',
                                                                          style:
                                                                              TextStyle(
                                                                            color:
                                                                                Color(0xff10151a),
                                                                            fontSize:
                                                                                15,
                                                                            fontStyle:
                                                                                FontStyle.normal,
                                                                            fontWeight:
                                                                                FontWeight.w700,
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    spacer10,
                                                                    Input(
                                                                      //  focusNode: passwordFocus,

                                                                      // controller:
                                                                      //     password,
                                                                      hintText:
                                                                          'Confirm Password',
                                                                      isPassword:
                                                                          true,
                                                                      showObscureText:
                                                                          showObscureTextPassword2,
                                                                      styleColor:
                                                                          Color(
                                                                              0xFF7C7C7C),
                                                                      isPasswordColor:
                                                                          Color(
                                                                              0xFF7C7C7C),
                                                                      obscureText:
                                                                          showObscureTextPassword2,
                                                                      toggleEye:
                                                                          () {
                                                                        setState(
                                                                            () {
                                                                          showObscureTextPassword2 =
                                                                              !showObscureTextPassword2;
                                                                        });
                                                                      },
                                                                      hintStyleColor:
                                                                          Color(
                                                                              0xFF7C7C7C),
                                                                      validator:
                                                                          (String
                                                                              value) {
                                                                        if (value.length <
                                                                            1) {
                                                                          return 'enter your password';
                                                                        }
                                                                        return null;
                                                                      },
                                                                    ),
                                                                    spacer20
                                                                  ]),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Center(
                                                      child: GestureDetector(
                                                        onTap: () {
                                                          showDialog(
                                                              context: context,
                                                              builder: (BuildContext
                                                                      context) =>
                                                                  BackdropFilter(
                                                                    filter: ImageFilter.blur(
                                                                        sigmaX:
                                                                            6,
                                                                        sigmaY:
                                                                            6),
                                                                    child:
                                                                        AlertDialog(
                                                                      title:
                                                                          Column(
                                                                        children: [
                                                                          spacer10,
                                                                          Center(
                                                                            child:
                                                                                new Text(
                                                                              "Your password has been reset",
                                                                              textAlign: TextAlign.center,
                                                                              style: TextStyle(
                                                                                fontSize: 24,
                                                                                fontWeight: FontWeight.w800,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          spacer20,
                                                                          GestureDetector(
                                                                            onTap:
                                                                                () {
                                                                              Navigator.of(context).push(
                                                                                MaterialPageRoute(
                                                                                  settings: RouteSettings(name: "/loginPage"),
                                                                                  builder: (context) => LoginPage(),
                                                                                ),
                                                                              );
                                                                            },
                                                                            child:
                                                                                SizedBox(
                                                                              width: 300,
                                                                              height: 52,
                                                                              child: Container(
                                                                                child: Center(
                                                                                    child: Text(
                                                                                  'Sign In',
                                                                                  style: TextStyle(
                                                                                    color: Colors.white,
                                                                                    fontStyle: FontStyle.normal,
                                                                                    fontWeight: FontWeight.w700,
                                                                                    fontSize: 16,
                                                                                  ),
                                                                                )),
                                                                                decoration: BoxDecoration(color: primaryColor, borderRadius: BorderRadius.circular(5)),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          spacer10
                                                                        ],
                                                                      ),
                                                                      // content: Column(
                                                                      //   children: [

                                                                      //   ],
                                                                      // ),
                                                                      backgroundColor:
                                                                          Colors
                                                                              .white,
                                                                      shape: RoundedRectangleBorder(
                                                                          borderRadius:
                                                                              new BorderRadius.circular(10)),
                                                                      // actions: <Widget>[

                                                                      // ],
                                                                    ),
                                                                  ));
                                                        },
                                                        child: Container(
                                                           margin: EdgeInsets.only(bottom: 24.0),
                                                          width: 360,
                                                          height: 52,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Color(
                                                                0xff3a953c),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        5.0),
                                                          ),
                                                          child: Center(
                                                            child: Text(
                                                              'Save Password',
                                                              style: TextStyle(
                                                                color: Color(
                                                                    0xffffffff),
                                                                fontStyle:
                                                                    FontStyle
                                                                        .normal,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700,
                                                                fontSize: 16,
                                                              ),
                                                            ),
                                                          ),
                                                          
                                                              
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            );
                                          });
                                      // print("object");
                                      // showBottomSheet(
                                      //     context: context,
                                      //     builder: (context) => Container(
                                      //           color: Color(0xffffffff),
                                      //           height: 500,
                                      //           child: SingleChildScrollView(
                                      //             child: Column(),
                                      //           ),
                                      //         ));
                                    },
                                    child: Container(
                                      width: 360,
                                      height: 52,
                                      decoration: BoxDecoration(
                                        color: Color(0xff3a953c),
                                        borderRadius:
                                            BorderRadius.circular(5.0),
                                      ),
                                      child: Center(
                                        child: Text(
                                          'Continue',
                                          style: TextStyle(
                                            color: Color(0xffffffff),
                                            fontStyle: FontStyle.normal,
                                            fontWeight: FontWeight.w700,
                                            fontSize: 16,
                                          ),
                                        ),
                                      ),
                                      margin: EdgeInsets.only(
                                          bottom: 24.0, right: 10, left: 10),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      });
                  // print("object");
                  // showBottomSheet(
                  //     context: context,
                  //     builder: (context) => Container(
                  //           color: Color(0xffffffff),
                  //           height: 500,
                  //           child: SingleChildScrollView(
                  //             child: Column(),
                  //           ),
                  //         ));
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
                      'Continue',
                      style: TextStyle(
                        color: Color(0xffffffff),
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  margin: EdgeInsets.only(bottom: 24.0, left: 24, right: 24),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}



