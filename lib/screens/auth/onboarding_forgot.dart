

import 'package:flutter/material.dart';
import 'package:otp_text_field/style.dart';
import 'package:sizer/sizer.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:form_field_validator/form_field_validator.dart';
// import 'package:pagescroll_app/onboarding_signin.dart';



class ForgotPage extends StatefulWidget {
   final String name = 'forgotPage';
  @override
  _ForgotPageState createState() => _ForgotPageState();
}

class _ForgotPageState extends State<ForgotPage> {
  var _formKey = GlobalKey<FormState>();

  TextEditingController password =TextEditingController();
  TextEditingController confirmpassword =TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          
         
          color: Color.fromRGBO(255, 255, 255, 0.63),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  //width: 150,
                  //height: 200,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        // margin: EdgeInsets.only(right:9.86.w),
                       // width: 64.w,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Forgot Password',
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontStyle: FontStyle.normal,
                                fontSize: 24,
                                //letterSpacing: 0.053.w,
                                color: Color(0xff10151a),
                              ),
                            ),
                            Text(
                              'to your account',
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontStyle: FontStyle.normal,
                                fontSize: 24
                                ,
                                letterSpacing: 0.053.w,
                                color: Color(0xff10151a),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                         margin: EdgeInsets.only(right: 24),
                        width: 30.3,
                        height: 30.15,
                        child: CircleAvatar(
                          backgroundColor: Color.fromRGBO(58, 149, 60, 0.1),
                          child: Image.asset(
                            'assets/images/reset.png',
                            width: 4.26.w,
                            height: 1.97.h,
                          ),
                        ),
                      ),
                    ],
                  ),
                  margin: EdgeInsets.only(bottom:1.97.h),
                ),
                Container(
                  width: 150,
                  // height: 5.41.h,
                  child: Text('Select what contact details we use to reset your password',
                    style:TextStyle(
                      fontWeight: FontWeight.normal,
                      fontStyle: FontStyle.normal,
                      fontSize: 17,
                      color: Color(0xff999999),
                  ),
                  ),
                  margin: EdgeInsets.only(bottom:4.80.h),
                ),
                  Container(
                    margin: EdgeInsets.only(bottom: 3.57.h),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children:[
                        Container(
                          width: 11.73.w,
                          height: 5.41.h,
                          child: Stack(
                            children: [
                              Image.asset(
                                'assets/images/Rectangle.png',
                                  width: 11.73.w,
                                  height: 5.41.h,
                              ),
                              Center(
                                child: Image.asset(
                                  'assets/images/phone.png',
                                  width: 4.0.w,
                                  height: 2.95.h,
                                ),
                              ),
                            ],
                          ),
                          margin: EdgeInsets.only(right: 6.4.w),
                        ),
                        Container(
                          width: 52.w,
                          height: 5.41.h,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('via sms', style: TextStyle(color:Color(0xff10151A),fontSize: 16.sp,fontWeight: FontWeight.bold ),),
                              Text('*** **** 7767',style: TextStyle(color:Color(0xff999999),fontSize: 14.sp,fontWeight: FontWeight.normal),),
                            ],
                          ),
                          margin: EdgeInsets.only(right: 12.2.w),
                        ),
                        Container(
                          width: 4.26.w,
                          height:1.97.h,
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
                      ]
                    ),
                  ),
                Container(
                  child: Divider(
                    thickness: 1,
                    color: Color(0xfff5f5f5)
                  ),
                  margin: EdgeInsets.only(bottom:3.57.h),
                ),
                Container(
                  margin: EdgeInsets.only(bottom:39.65.h),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children:[
                        Container(
                          width: 11.73.w,
                          height: 5.41.h,
                          child: Stack(
                            children: [
                              Image.asset(
                                'assets/images/Rectangle.png',
                                width: 11.73.w,
                                height: 5.41.h,
                              ),
                              Center(
                                child: Image.asset(
                                  'assets/images/mail.png',
                                  width: 5.3.w,
                                  height: 1.97.h,
                                ),
                              ),
                            ],
                          ),
                          margin: EdgeInsets.only(right: 6.4.w),
                        ),
                        Container(
                          width: 52.w,
                          height: 5.41.h,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('via email:', style: TextStyle(color:Color(0xff10151A),fontSize: 16.sp,fontWeight: FontWeight.bold ),),
                              Text('*******vid@gmail.com',style: TextStyle(color:Color(0xff999999),fontSize: 14.sp,fontWeight: FontWeight.normal),),
                            ],
                          ),
                          margin: EdgeInsets.only(right: 12.2.w),
                        ),
                        Container(
                          width: 4.26.w,
                          height:1.97.h,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            shape: BoxShape.circle,
                          ),
                        ),
                      ]
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    showBottomSheet(
                      context: context,
                      builder: (context) =>
                          Container(
                        height: 55.7.h,
                             color: Color(0xffffffff),
                             padding: EdgeInsets.only(top: 3.94.h,left: 6.4.w,),
                             child: SingleChildScrollView(
                               child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(bottom: 1.97.h),
                                      width: 87.2.w,
                                     height: 3.57.h,
                                     child: Row(
                                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                       children: [
                                         Text('Enter 4 Digits Code', style: TextStyle(
                                           fontSize: 24.sp,
                                           color: Color(0xff3C673D),
                                           fontWeight: FontWeight.bold,
                                           fontStyle: FontStyle.normal,
                                         ),),
                                         GestureDetector(
                                           onTap: (){
                                             Navigator.pop(context);
                                           },
                                           child: Container(
                                               child: Image.asset('assets/images/x.png', color: Color(0xff000000),),
                                              width: 3.2.w,
                                               height: 1.47.h,
                                           ),
                                         ),
                                       ],
                                     ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(bottom: 4.93.h),
                                      width: 69.86.w,
                                      height: 5.42.h,
                                      child: Text('Enter the four digits code set to your email address',
                                        style: TextStyle(
                                        fontSize: 17.sp,
                                        color: Color(0xff999999),
                                        fontWeight: FontWeight.normal,
                                        fontStyle: FontStyle.normal,
                                      ),
                                      ),
                                    ),
                                    Center(
                                      child: Container(
                                        height: 5.79.h,
                                        margin: EdgeInsets.only(bottom: 20.073.h),
                                        child: OTPTextField(
                                          otpFieldStyle: OtpFieldStyle(
                                            backgroundColor: Color(0xfff7f7f7),
                                          ),
                                          width: 327,
                                          length: 4,
                                          fieldWidth: 75.75,
                                          fieldStyle: FieldStyle.box,
                                          // length: 4,
                                          // width: double.infinity,
                                          // fieldWidth: 20.2.w,
                                          textFieldAlignment: MainAxisAlignment.center,
                                          style: TextStyle(
                                            fontSize: 15.sp,
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

                                    GestureDetector(
                                      onTap: (){
                                        showBottomSheet(
                                            context: context,
                                            builder: (context) =>
                                          Container(
                                            height: 55.78.h,
                                            padding: EdgeInsets.only(top: 3.94.h,left: 6.4.w),
                                            child: SingleChildScrollView(
                                              child: Form(
                                                autovalidateMode:
                                                AutovalidateMode.always, //check for validation while typing
                                                key: _formKey,
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      width: 87.2.w,
                                                      height: 3.571.h,
                                                      margin: EdgeInsets.only(bottom: 1.97.h),
                                                      child: Row(
                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                        children: [
                                                          Text(
                                                            'Reset Password',
                                                            style: TextStyle(
                                                              color: Color(0xff3C673D),
                                                              fontStyle: FontStyle.normal,
                                                              fontWeight: FontWeight.bold,
                                                              fontSize: 24.sp,
                                                            ),
                                                          ),
                                                          GestureDetector(
                                                            onTap:(){
                                                              Navigator.pop(context);
                                                            } ,
                                                            child: Container(
                                                              child: Image.asset('assets/images/x.png', color: Color(0xff000000),),
                                                              width: 3.2.w,
                                                              height: 1.47.h,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Container(
                                                      width: 80.8.w,
                                                      child: Text(
                                                        'Set the new password for your account so you can login and access the features',
                                                        style: TextStyle(
                                                          fontSize:17.sp,
                                                          fontWeight: FontWeight.normal,
                                                          color: Color(0xff999999),
                                                        ),
                                                      ),
                                                      margin: EdgeInsets.only(bottom: 3.94.h),
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
                                                          onChanged: (value) => password = value as TextEditingController,
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
                                                            suffixIcon: Image.asset('assets/images/redeye.png',color: Color(0xff999999),
                                                            width: 5.45.w, height: 1.88.h,
                                                            ),
                                                            border: OutlineInputBorder(),
                                                            hintText: 'Enter Password',
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
                                                      // width: 26.66.w,
                                                      height: 2.46.h,
                                                      child: Text(
                                                        'Confirm Password',
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
                                                          onChanged: (value) => password = value as TextEditingController,
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
                                                            suffixIcon: Image.asset('assets/images/redeye.png',color: Color(0xff999999),
                                                              width: 5.45.w, height: 1.88.h,
                                                            ),
                                                            border: OutlineInputBorder(),
                                                            hintText: 'Enter Password',
                                                            hintStyle: TextStyle(
                                                              fontStyle: FontStyle.normal,
                                                              fontWeight: FontWeight.normal,
                                                              fontSize: 15.sp,
                                                              color: Color(0xffbababa),
                                                            ),
                                                          ),
                                                        validator: (value) {
                                                          // ignore: unrelated_type_equality_checks
                                                          if(value !=" " && value == password){
                                                            return 'perfect password combination';
                                                          }
                                                          else {
                                                            return 'wrong password combination';
                                                          }
                                                        },
                                                        onSaved: (value){
                                                          confirmpassword = value as TextEditingController;
                                                        },),
                                                      margin: EdgeInsets.only(bottom: 4.43.h),
                                                    ),
                                                    GestureDetector(
                                                      onTap: (){
                                                        // Alert(
                                                        //   context: context,
                                                        //   type: AlertType.error,
                                                        //   title: 'Your password has been reset', style:AlertStyle(
                                                        //   backgroundColor:  Color(0xffffffff),
                                                        // ),
                                                        //     buttons: [
                                                        //       DialogButton(child: Text('Sign In', style: TextStyle(
                                                        //           color: Color(0xffffffff),
                                                        //         fontStyle: FontStyle.normal,
                                                        //         fontWeight: FontWeight.w700,
                                                        //         fontSize: 16,
                                                        //       ),),
                                                        //           onPressed:(){
                                                        //             Navigator.push(context, MaterialPageRoute(builder: (context) => SigninPage()),);
                                                        //           }
                                                        //           )
                                                        //     ],
                                                        // ).show();
                                                      },
                                                      child: Container(
                                                        width: 87.2.w,
                                                        height: 5.78.h,
                                                        decoration: BoxDecoration(
                                                          color: Color(0xff3a953c),
                                                          borderRadius: BorderRadius.circular(5.0),
                                                        ),
                                                        child: Center(
                                                          child: Text('Save Password', style: TextStyle(
                                                            color: Color(0xffffffff),
                                                            fontStyle: FontStyle.normal,
                                                            fontWeight: FontWeight.w700,
                                                            fontSize: 16.sp,
                                                          ),),
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                      child: Container(
                                        width: 87.2.w,
                                        height: 5.78.h,
                                        decoration: BoxDecoration(
                                          color: Color(0xff3a953c),
                                          borderRadius: BorderRadius.circular(5.0),
                                        ),
                                        child: Center(
                                          child: Text('Continue', style: TextStyle(
                                            color: Color(0xffffffff),
                                            fontStyle: FontStyle.normal,
                                            fontWeight: FontWeight.w700,
                                            fontSize: 16.sp,
                                          ),),
                                        ),
                                        margin: EdgeInsets.only(bottom: 2.95.h),
                                      ),
                                    ),
                                  ],
                        ),
                             ),
                      ),
                    );
                  },
                  child: Container(
                    width: 87.2.w,
                    height: 5.78.h,
                    decoration: BoxDecoration(
                      color: Color(0xff3a953c),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: Center(
                      child: Text('Continue', style: TextStyle(
                        color: Color(0xffffffff),
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w700,
                        fontSize: 16.sp,
                      ),),
                    ),
                    margin: EdgeInsets.only(bottom: 2.95.h),
                  ),
                ),
              ],
            ),
          ),
        ),
    );
  }
}