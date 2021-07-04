import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:sbsc_capstone_team_jupiter/model/register.dart';
import 'package:sbsc_capstone_team_jupiter/screens/auth/components/social_card.dart';
import 'package:sbsc_capstone_team_jupiter/services/auth.dart';
// import 'package:sbsc_capstone_team_jupiter/widgets/alert.dart';
import 'package:sbsc_capstone_team_jupiter/widgets/colors.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sbsc_capstone_team_jupiter/widgets/input.dart';
// import 'package:sbsc_capstone_team_jupiter/widgets/loader.dart';
import 'package:validators/validators.dart' as validator;
import 'package:sbsc_capstone_team_jupiter/size_config.dart';

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
                child: ListView(
                  children: [
                    SafeArea(
                      child: SizedBox(
                        height: 40,
                      ),
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
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 24,
                                  // letterSpacing: 0.053,
                                  color: Color(0xff10151a),
                                ),
                              ),
                              Text(
                                'your account',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 24,
                                  // letterSpacing: 0.2,
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
                      height: 40,
                    ),
                    SocialLogin(
                      title: 'Register with Google',
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
                      title: 'Register with Facebook',
                      textColor: Color(0xffffffff),
                      cardColor: Color(0xff3D5B96),
                      onTap: () {},
                      image: 'assets/images/facebook.png',
                      imgwidth: 9.34,
                      imgheight: 18,
                      marginright: 17.33,
                    ),
                    SizedBox(
                      height: 16
                    ),
                    SocialLogin(
                      title: 'Sign in Apple ID',
                      textColor: Color(0xffffffff),
                      cardColor: Color(0xff000000),
                      onTap: () {},
                      image: 'assets/images/apple.png',
                      imgwidth: 16.38,
                      imgheight: 19.5,
                      marginright: 13.8,
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Container(
                      child: Center(
                        child: Text(
                          '- OR REGISTER WITH MAIL -',
                          style: TextStyle(
                            color: Color(0xff999999),
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.normal,
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Row(
                      children: [
                        Text(
                          'First Name',
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
                      controller: firstname,

                      hintText: 'First Name',

                      styleColor: primaryColor,
                      obscureText: false,
                      hintStyleColor: Color(0xFFBABABA),
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
                      height: 16,
                    ),
                    Row(
                      children: [
                        Text(
                          'Last Name',
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
                      controller: lastname,

                      hintText: 'Last Name',

                      styleColor: primaryColor,
                      obscureText: false,
                      hintStyleColor: Color(0xFFBABABA),
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
                      height: 16,
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
                        return null;
                      },
                      onSaved: (String value) {
                        register.email = value;
                      },
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        Text(
                          'Password',
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
                      height: 16,
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
                      hintStyleColor: Color(0xFFbababa),
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
                        register..confirmPassword = value;
                      },
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Center(
                      child: GestureDetector(
                        onTap: () async {
                          if (_formKey.currentState.validate()) {
                            _formKey.currentState.save();
                            // showLoader(context);

                            CircularProgressIndicator();
                            try {
                              final data = await Auth.userSignup(register);
                              print(data);
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  settings: RouteSettings(name: "/loginPage"),
                                  builder: (context) => LoginPage(),
                                ),
                              );
                             // Loader.hide();
                            } catch (e) {
                             // hideLoader();
                              // Alert(
                              //   context: context,
                              //   content: e,
                              //   title: 'Login Error',
                              // );
                            }
                          }
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
                              'Create Account',
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
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Have an account already?",
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
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ],
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
