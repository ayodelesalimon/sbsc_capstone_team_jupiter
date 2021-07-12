import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:sbsc_capstone_team_jupiter/util/constants.dart';
import 'package:sbsc_capstone_team_jupiter/model/auth/login.dart';
import 'package:sbsc_capstone_team_jupiter/model/category/add_category.dart';
import 'package:sbsc_capstone_team_jupiter/screens/auth/login.dart';
import 'package:sbsc_capstone_team_jupiter/screens/home/home.dart';
import 'package:sbsc_capstone_team_jupiter/screens/tab_controller.dart';
import 'package:sbsc_capstone_team_jupiter/services/auth.dart';
import 'package:sbsc_capstone_team_jupiter/services/category.dart';
import 'package:sbsc_capstone_team_jupiter/services/otp_request.dart';
import 'package:sbsc_capstone_team_jupiter/widgets/alert.dart';
import 'package:sbsc_capstone_team_jupiter/widgets/colors.dart';
import 'package:sbsc_capstone_team_jupiter/widgets/input.dart';
import 'package:sbsc_capstone_team_jupiter/widgets/loader.dart';
import 'package:validators/validators.dart' as validator;

//import 'model/user_request/email_request_password.dart';

class TestPage extends StatefulWidget {
  final String name = 'test';
  const TestPage({Key key}) : super(key: key);

  @override
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
 // EmailPasswordRequest emailPasswordRequest = EmailPasswordRequest();
  AddCategory addCategory = AddCategory();
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
                    if (value.length < 1) {
                      return 'Email Address is required';
                    }
                  },
                  onSaved: (String value) {
                    // addCategory.categoryName = value;

                  //  emailPasswordRequest.email = value;
                  },
                ),
                SizedBox(
                  height: 14,
                ),
                spacer10,
                spacer20,
                Center(
                  child: GestureDetector(
                    onTap: () async {
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
                          'Send',
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
              ])),
        ),
      )),
    );
  }
}
