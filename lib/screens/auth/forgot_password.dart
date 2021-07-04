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
import 'package:sbsc_capstone_team_jupiter/size_config.dart';

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
      body: SingleChildScrollView(
        child: Container(
          width: SizeConfig.screenWidth,
          height: SizeConfig.screenHeight,
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 24),
            child: ListView(
              children: [
                SafeArea(
                  child: SizedBox(
                    height: 40,
                  ),
                ),
                Container(
                  width: 327,
                  height: 68,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Forgot Password',
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
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xff3A953C).withOpacity(.1),
                        ),
                        child: Center(
                          child: Image.asset(
                            'assets/images/lock.png',
                            width: 14,
                            height: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  width: 262,
                  child: Text(
                    'Select what contact details we use to reset your password',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontStyle: FontStyle.normal,
                      fontSize: 17,
                      color: Color(0xff999999),
                    ),
                  ),
                ),
                SizedBox(height: 39,),
                Container(
                  width: 327,
                  height: 44,
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 44,
                          height: 44,
                          decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                            color: Color(0xffE6F6EE),
                          ),
                          child: Center(
                            child: Image.asset(
                              'assets/images/phone.png',width: 15,height: 24,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 24,
                        ),
                        Container(
                          height: 42,
                          width: 195,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                        ),
                        SizedBox(
                          width: 46,
                        ),
                        Center(
                          child: Container(
                            width: 16,
                            height: 16,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color:Color(0xff10151a)),
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                      ],),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 29),
                  child: Divider(
                    thickness: 1,
                    color: Color(0xfff5f5f5),
                  ),
                ),
                Container(
                  width: 327,
                  height: 44,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 44,
                        height: 44,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          color: Color(0xffE6F6EE),
                        ),
                        child: Center(
                          child: Image.asset(
                            'assets/images/mail.png',width: 20,height: 16,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 24,
                      ),
                      Container(
                        height: 42,
                        width: 195,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'via email:',
                              style: TextStyle(
                                  color: Color(0xff10151A),
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '•••••••vid@gmail.com',
                              style: TextStyle(
                                  color: Color(0xff999999),
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 46,
                      ),
                      Center(
                        child: Container(
                          width: 16,
                          height: 16,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color:Color(0xff10151a)),
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                    ],),
                ),
                SizedBox(height: 332,),
                Center(
                  child: GestureDetector(

                    onTap: () {
                      showDialog<String>(
                        context: context,
                        builder: (BuildContext context) =>
                            AlertDialog(
                              insetPadding: EdgeInsets.only(top: 359),
                              content: Center(
                                child: SingleChildScrollView(
                                  child: Container(
                                    margin: EdgeInsets.symmetric(horizontal: 24),
                                    height: 453,
                                    width: 327,
                                    child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                        height:32,
                                    ),
                                      Container(
                                      width: 327,
                                      height: 29,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text('Enter 4 Digits Code',
                                            style: TextStyle(
                                            fontSize: 24,
                                            color: Color(0xff3C673D),
                                            fontWeight: FontWeight.bold,
                                            fontStyle: FontStyle.normal,
                                          ),
                                          ),
                                          GestureDetector(
                                            onTap: (){
                                              Navigator.pop(context);
                                            },
                                            child: Container(
                                              child: Image.asset('assets/images/x.png', color: Color(0xff000000),),
                                              width: 12,
                                              height: 12,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 16,),
                                    Container(
                                      width: 262,
                                      child: Text('Enter the four digits code set to your email address',
                                        style: TextStyle(
                                          fontSize: 17,
                                          color: Color(0xff999999),
                                          fontWeight: FontWeight.normal,
                                          fontStyle: FontStyle.normal,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 40,),
                                    Center(
                                      child: Container(
                                        height: 47,
                                        child: OTPTextField(
                                          otpFieldStyle: OtpFieldStyle(
                                            backgroundColor: Color(0xfff7f7f7),
                                          ),
                                          width: 327,
                                          length: 4,
                                          fieldWidth: 75.75,
                                          fieldStyle: FieldStyle.box,
                                          textFieldAlignment: MainAxisAlignment.center,
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: Color(0xff10151A),
                                          ),
                                          onChanged: (pin){
                                            print('Changed:' + pin);
                                          },
                                          onCompleted: (pin){
                                            print('Completed:' + pin);
                                          },
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 163,),
                                    Center(
                                      child: GestureDetector(
                                        child: Container(
                                          width: 327,
                                          height: 47,
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
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16,
                                              ),
                                            ),
                                          ),
                                        ),
                                        onTap: (){
                                          showDialog<String>(
                                            context: context,
                                            builder: (BuildContext context) =>
                                                AlertDialog(
                                                  insetPadding: EdgeInsets.only(top: 359),
                                                  content: Center(
                                                    child: SingleChildScrollView(
                                                      child: Container(
                                                        margin: EdgeInsets.symmetric(horizontal: 24),
                                                        height: 453,
                                                        width: 327,
                                                        child: Column(
                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                          children: [
                                                            SizedBox(
                                                              height:32,
                                                            ),
                                                            Container(
                                                              width: 327,
                                                              height: 29,
                                                              child: Row(
                                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                children: [
                                                                  Text('Reset Password',
                                                                    style: TextStyle(
                                                                      fontSize: 24,
                                                                      color: Color(0xff3C673D),
                                                                      fontWeight: FontWeight.bold,
                                                                      fontStyle: FontStyle.normal,
                                                                    ),
                                                                  ),
                                                                  GestureDetector(
                                                                    onTap: (){
                                                                      Navigator.pop(context);
                                                                    },
                                                                    child: Container(
                                                                      child: Image.asset('assets/images/x.png', color: Color(0xff000000),),
                                                                      width: 12,
                                                                      height: 12,
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            SizedBox(height: 16,),
                                                            Container(
                                                              width: 303,
                                                              child: Text('Set the new password for your account so you can login and access the features',
                                                                style: TextStyle(
                                                                  fontSize: 17,
                                                                  color: Color(0xff999999),
                                                                  fontWeight: FontWeight.normal,
                                                                  fontStyle: FontStyle.normal,
                                                                ),
                                                              ),
                                                            ),
                                                            SizedBox(height: 32,),
                                                          Form(
                                                            key: _formKey,
                                                             child: Container(
                                                                child: Column(
                                                                 crossAxisAlignment: CrossAxisAlignment.start,
                                                                 children: [
                                                                  Text(
                                                                    'Password',
                                                                       style:
                                                                              TextStyle(
                                                                          color:
                                                                          Color(0xff10151a),
                                                                          fontSize:15,
                                                                          fontStyle:FontStyle.normal,
                                                                          fontWeight:FontWeight.bold,
                                                                          ),
                                                                          ),
                                                                 SizedBox(height:16),
                                                                 Input(
                                                                    hintText:'Password',
                                                                    isPassword:true,
                                                                showObscureText:showObscureTextPassword,
                                                                styleColor:Color(0xFFbababa),
                                                                isPasswordColor:Color(0xFFbababa),
                                                                obscureText:showObscureTextPassword,
                                                                toggleEye:() {
                                                                setState(() {
                                                                showObscureTextPassword =!showObscureTextPassword;
                                                                });
                                                                },
                                                                hintStyleColor:Color(0xFFbababa),
                                                                validator:(String
                                                                value) {
                                                                if (value.length <1) {
                                                                return 'enter your password';
                                                                }
                                                                return null;
                                                                },
                                                                ),
                                                                       SizedBox(height:16),
                                                                  Text('Confirm Password',
                                                                  style:TextStyle(color:Color(0xff10151a),fontSize:15,fontStyle:FontStyle.normal,fontWeight:FontWeight.bold,),),
                                                                  SizedBox(height:16),
                                                                     Input(
                                                                   hintText:'Confirm Password',isPassword:true,showObscureText:showObscureTextPassword2,styleColor:Color(0xFFbababa),
                                                                  isPasswordColor:Color(0xFF7C7C7C),obscureText:showObscureTextPassword2,
                                                                  toggleEye:
                                                                    () {
                                                                    setState(() {
                                                                    showObscureTextPassword2 =!showObscureTextPassword2;
                                                                    });
                                                                    },
                                                                    hintStyleColor:
                                                                    Color(0xFFbababa),
                                                                    validator:(String value) {
                                                                    if (value.length <1) {
                                                                    return 'enter password';
                                                                    }
                                                                    return null;
                                                                    },
                                                                    ),
                                                                   Center(
                                                                       child: GestureDetector(
                                                                   child: Container(
                                                                  width: 327,
                                                                  height: 47,
                                                                  decoration: BoxDecoration(
                                                                    color: Color(0xff3a953c),
                                                                    borderRadius: BorderRadius.circular(5.0),
                                                                  ),
                                                                  child: Center(
                                                                    child: Text(
                                                                      'Save Password',
                                                                      style: TextStyle(
                                                                        color: Color(0xffffffff),
                                                                        fontStyle: FontStyle.normal,
                                                                        fontWeight: FontWeight.bold,
                                                                        fontSize: 16,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                onTap: (){
                                                                showDialog<String>(
                                                                context: context,
                                                                         builder: (BuildContext context) =>AlertDialog(
                                                                          insetPadding: EdgeInsets.only(left: 24, right: 24,top: 261, bottom: 350),
                                                                          content:Center(
                                                                          child:Container(
                                                                          width:327,
                                                                          child: Text(
                                                                          'Your password has been reset',
                                                                          style: TextStyle(
                                                                          fontSize: 24,
                                                                          fontWeight: FontWeight.bold,
                                                                          color: Color(0xff10151a),
                                                                          ),
                                                                          textAlign: TextAlign.center,
                                                                          ),
                                                                          ),),
                                                                              actions: <Widget>[
                                                                      Center(
                                                                      child: GestureDetector(
                                                                      onTap:(){
                                                                      // Navigator.push(context,MaterialPageRoute(builder: (context)=> SigninPage()),);
                                                                      },
                                                                      child: Container(
                                                                      width: 279,
                                                                      height: 47,
                                                                      decoration: BoxDecoration(
                                                                      color: Color(0xff3a953c),
                                                                      borderRadius: BorderRadius.circular(5.0),
                                                                      ),
                                                                        child: Center(
                                                                        child: Text('Sign in', style: TextStyle(
                                                                        color: Color(0xffffffff),
                                                                        fontStyle: FontStyle.normal,
                                                                        fontWeight: FontWeight.w700,
                                                                        fontSize: 16,
                                                                        ),),
                                                                        ),),
                                                                        ),
                                                                          ),
                                                                          ],
                                                                          ),
                                                                     );},
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),],
                                                  ),
                                                ),),),
                                                ), );
                                        },
                                      ),
                                    ),
                                    ],
                                  ),
                                  ),
                                ),
                              ),
                            ),
                      );
                    },
                    child: Container(
                      width: 327,
                      height: 47,
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
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height:35),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
