
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';
import 'package:form_field_validator/form_field_validator.dart';

class SigninPage extends StatefulWidget {
  @override
  _SigninPageState createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  var _formKey = GlobalKey<FormState>();

  TextEditingController email =TextEditingController();

  // String? validatePassword(String value) {
  //   if (value.isEmpty) {
  //     return "* Required";
  //   } else if (value.length < 6) {
  //     return "Password should be atleast 6 characters";
  //   } else if (value.length > 15) {
  //     return "Password should not be greater than 15 characters";
  //   } else
  //     return null;
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
            // padding: EdgeInsets.only(top:10.34.h, right: 6.4.w, left: 6.4.w,),
            padding: EdgeInsets.only(
              top: 10.34.h,
              right: 6.4.w,
              left: 6.4.w,
            ),
            width: 100.w,
            height: 100.h,
            color: Color.fromRGBO(255, 255, 255, 0.63),
            child: Form(
              autovalidateMode:
                  AutovalidateMode.always, //check for validation while typing
              key: _formKey,
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 87.2.w,
                    height: 8.37.h,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          // margin: EdgeInsets.only(right:9.86.w),
                          width: 64.w,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Sign in',
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 24.sp,
                                  letterSpacing: 0.053.w,
                                  color: Color(0xff10151a),
                                ),
                              ),
                              Text(
                                'to your account',
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 24.sp,
                                  letterSpacing: 0.053.w,
                                  color: Color(0xff10151a),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 13.3.w,
                          height: 6.15.h,
                          child: CircleAvatar(
                            backgroundColor: Color.fromRGBO(58, 149, 60, 0.1),
                            child: Image.asset(
                              'assets/images/user.png',
                              width: 4.26.w,
                              height: 1.97.h,
                            ),
                          ),
                        ),
                      ],
                    ),
                    margin: EdgeInsets.only(bottom: 5.91.h),
                  ),
                  Container(
                    // width: 26.66.w,
                    height: 2.46.h,
                    child: Text(
                      'Email Address',
                      style: TextStyle(
                        color: Color(0xff10151a),
                        fontSize: 15.sp,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    margin: EdgeInsets.only(bottom: 1.97.h),
                  ),
                  Container(
                    width: 87.2.w,
                    height: 5.788.h,
                    decoration: BoxDecoration(
                      color: Color(0xfff7f7f7),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: TextFormField(
                        controller: email,
                         style: TextStyle(
                           color: Colors.black,
                           fontStyle: FontStyle.normal,
                           fontWeight: FontWeight.normal,
                           fontSize: 15.sp,
                         ),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Select Category',
                          hintStyle: TextStyle(
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.normal,
                            fontSize: 15.sp,
                            color: Color(0xffbababa),
                          ),
                        ),
                        // validator: (String value){
                        //   if(value.isEmpty){
                        //     return 'Email is required';
                        //   }
                        //
                        //   if(!RegExp("^[a-zA-Z0-9.!#%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*").hasMatch(value)){
                        //     return 'Enter a valid email address';
                        //
                        //   }
                        //   return null;
                        // },
                        validator: MultiValidator([
                          RequiredValidator(errorText: "* Required"),
                          EmailValidator(errorText: "Enter valid email id"),
                          PatternValidator(r"^[a-zA-Z0-9.!#%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*", errorText: "Enter valid email id"),
                        ]),
                      textAlign: TextAlign.start,
                      keyboardType: TextInputType.emailAddress ,
                    ),
                    margin: EdgeInsets.only(bottom: 1.97.h),

                  ),
                  Container(
                    // width: 26.66.w,
                    height: 2.46.h,
                    child: Text(
                      'Password',
                      style: TextStyle(
                        color: Color(0xff10151a),
                        fontSize: 15.sp,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    margin: EdgeInsets.only(bottom: 1.97.h),
                  ),
                  Container(
                    width: 87.2.w,
                    height: 5.788.h,
                    decoration: BoxDecoration(
                      color: Color(0xfff7f7f7),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: TextFormField(
                        textAlign: TextAlign.start,
                        keyboardType: TextInputType.text,
                        obscureText: true,
                        style: TextStyle(
                          color: Colors.black,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.normal,
                          fontSize: 15.sp,
                        ),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Search Vendor',
                          hintStyle: TextStyle(
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.normal,
                            fontSize: 15.sp,
                            color: Color(0xffbababa),
                          ),
                        ),
                        validator: MultiValidator([
                          RequiredValidator(errorText: 'password is required'),
                          MinLengthValidator(8, errorText: 'password must be at least 8 digits long'),
                          PatternValidator(r'(?=.*?[#?!@$%^&*-])', errorText: 'passwords must have at least one special character')
                        ])),
                    margin: EdgeInsets.only(bottom: 1.97.h),
                  ),
                  Container(
                    height: 2.399.h,
                    width: 45.06.w ,
                    margin: EdgeInsets.only(left: 42.13.w,bottom: 2.95.h),
                    child: GestureDetector(
                      onTap: (){
                      },
                      child: Text('Forgot Password?',
                        style: TextStyle(
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w500,
                          fontSize: 13.sp,
                          color: Color(0xff819272),
                        ),
                        textAlign: TextAlign.right,
                        ),
                    ),
                  ),
                  GestureDetector(
                      onTap: (){
                        setState(() {
                          if(_formKey.currentState!.validate()){
                            print('perfect');
                          }
                          else{
                            return null;
                          }
                        });
                      },
                    child: Container(
                      width: 87.2.w,
                      height: 5.78.h,
                      decoration: BoxDecoration(
                        color: Color(0xff3a953c),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: Center(
                       child: Text('Login', style: TextStyle(
                         color: Color(0xffffffff),
                         fontStyle: FontStyle.normal,
                         fontWeight: FontWeight.w700,
                         fontSize: 16.sp,
                       ),),
                      ),
                      margin: EdgeInsets.only(bottom: 2.95.h),
                    ),
                  ),
                  Container(
                    child: Center(
                      child:Text(
                        '- OR SIGN IN WITH SOCIALS -',
                        style: TextStyle(
                        color: Color(0xff999999),
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w500,
                        fontSize: 13.sp,
                      ),
                      ),
                    ),
                    margin: EdgeInsets.only(bottom: 2.95.h),
                  ),
                  Container(
                    width: 87.2.w,
                    height: 5.78.h,
                    decoration: BoxDecoration(
                      color: Color(0xff000000),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                   child: Row(
                     crossAxisAlignment: CrossAxisAlignment.center,
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Image.asset('assets/images/apple.png',color: Color(0xffffffff),width: 4.368.w, height: 2.40.h,),
                       SizedBox(width: 3.68.w,),
                       Text('Sign in Apple ID ', style:
                         TextStyle(
                           color: Color(0xffffffff),
                           fontStyle: FontStyle.normal,
                           fontWeight: FontWeight.normal,
                           fontSize: 16.sp,
                         ),
                         textAlign: TextAlign.center,
                         ),
                     ],
                   ),
                    margin: EdgeInsets.only(bottom: 1.97.h),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 1.97.h),
                    width: 87.2.w,
                    height: 5.78.h,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xff10151a),width: 2.0,style: BorderStyle.solid),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: Center(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/images/google.png',color:Color(0xff10151a),width: 4.656.w, height: 2.20.h,),
                          SizedBox(width: 3.60.w,),
                          Text('Sign in with Google', style:
                          TextStyle(
                            color: Color(0xff10151a),
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.normal,
                            fontSize: 16.sp,
                          ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 87.2.w,
                    height: 5.78.h,
                    decoration: BoxDecoration(
                      color: Color(0xff3D5B96),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: Center(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/images/facebook.png',color: Color(0xffffffff),width: 2.49.w, height: 2.216.h,),
                          SizedBox(width: 4.62.w,),
                          Text('Sign in with Facebook ', style:
                          TextStyle(
                            color: Color(0xffffffff),
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.normal,
                            fontSize: 16.sp,
                          ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                    margin: EdgeInsets.only(bottom: 2.95.h),
                  ),
                  Container(
                    child: Center(
                      child:RichText(
                        text: TextSpan(
                          text: 'Don’t have an account? ',
                          style: TextStyle(
                            color: Color(0xff999999),
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w700,
                            fontSize: 14.sp,
                          ),
                          children: [
                        TextSpan(
                        text: 'Get Started',
                          style: TextStyle(
                            color: Color(0xff3A953C),
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w700,
                            fontSize: 14.sp,
                          ),
                        ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
      ),
    );
  }
}
