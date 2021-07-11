
import 'package:flutter/material.dart';
import 'package:otp_text_field/style.dart';
import 'package:sizer/sizer.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:sbsc_capstone_team_jupiter/login.dart';



class ForgotPage extends StatefulWidget {
  @override
  _ForgotPageState createState() => _ForgotPageState();
}

class _ForgotPageState extends State<ForgotPage> {

  Color active = Colors.green;
  Color inactive = Colors.transparent;
  FontWeight inactivefont = FontWeight.normal;


  update(int status) {
    if (status == 1) {
      if (inactive == Colors.transparent) {
        inactive = Colors.green;

        active = Colors.transparent;
      }
      else {
        inactive = Colors.transparent;

        active = Colors.transparent;
      }
    }
    if (status == 2) {
      if (active == Colors.transparent) {

        active = Colors.green;
        inactive = Colors.transparent;
      }
      else {
        active = Colors.transparent;
        inactive = Colors.transparent;
      }

    }
  }

  var _formKey = GlobalKey<FormState>();

  TextEditingController password =TextEditingController();
  TextEditingController confirmpassword =TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          // padding: EdgeInsets.only(top:10.34.h, right: 6.4.w, left: 6.4.w,),
          padding: EdgeInsets.only(
            top: 84,
            right: 24,
            left: 24,
          ),
          width: 375,
          height: 812,
          color: Color.fromRGBO(255, 255, 255, 0.63),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 327,
                height: 68,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      // margin: EdgeInsets.only(right:9.86.w),
                      width: 240,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Forgot Password',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontStyle: FontStyle.normal,
                              fontSize: 24,
                              color: Color(0xff10151a),
                            ),
                          ),
                          Text(
                            'to your account',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontStyle: FontStyle.normal,
                              fontSize: 24,
                              color: Color(0xff10151a),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color:  Color.fromRGBO(58, 149, 60, 0.1),
                      ),
                      child: Image.asset(
                        'assets/images/reset.png',
                        width: 14,
                        height: 16,
                      ),
                    ),
                  ],
                ),
                margin: EdgeInsets.only(bottom:16),
              ),
              Container(
                width: 262,
                // height: 5.41.h,
                child: Text('Select what contact details we use to reset your password',
                  style:TextStyle(
                    fontWeight: FontWeight.normal,
                    fontStyle: FontStyle.normal,
                    fontSize: 17,
                    color: Color(0xff999999),
                  ),
                ),
                margin: EdgeInsets.only(bottom:39),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 29),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:[
                      Container(
                        width: 44,
                        height: 44,
                        child: Stack(
                          children: [
                            Image.asset(
                              'assets/images/Rectangle.png',
                              width: 44,
                              height: 44,
                            ),
                            Center(
                              child: Image.asset(
                                'assets/images/phone.png',
                                width: 15,
                                height: 24,
                              ),
                            ),
                          ],
                        ),
                        margin: EdgeInsets.only(right: 24),
                      ),
                      Container(
                        width: 195,
                        // height: 5.41.h,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('via sms', style: TextStyle(color:Color(0xff10151A),fontSize: 16,fontWeight: FontWeight.bold ),),
                            Text('*** **** 7767',style: TextStyle(color:Color(0xff999999),fontSize: 14,fontWeight: FontWeight.normal),),
                          ],
                        ),
                        margin: EdgeInsets.only(right: 46),
                      ),
                      GestureDetector(
                        onTap:(){
                          setState(() {
                            update(2);
                          });
                        },
                        child: Container(

                          width: 16,
                          height:16,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            shape: BoxShape.circle,  color: active,
                          ),
                        ),
                      ),
                    ]
                ),
              ),
              Container(
                child: Divider(
                    thickness: 1,
                    color: Color(0xfff5f5f5)
                ),
                margin: EdgeInsets.only(bottom:29),
              ),
              Container(
                margin: EdgeInsets.only(bottom:322),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:[
                      Container(
                        width: 44,
                        height: 44,
                        child: Stack(
                          children: [
                            Image.asset(
                              'assets/images/Rectangle.png',
                              width: 44,
                              height: 44,
                            ),
                            Center(
                              child: Image.asset(
                                'assets/images/mail.png',
                                width: 20,
                                height: 16,
                              ),
                            ),
                          ],
                        ),
                        margin: EdgeInsets.only(right: 24),
                      ),
                      Container(
                        width: 195,
                        height: 42,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('via email:', style: TextStyle(color:Color(0xff10151A),fontSize: 16,fontWeight: FontWeight.bold ),),
                            Text('*******vid@gmail.com',style: TextStyle(color:Color(0xff999999),fontSize: 14,fontWeight: FontWeight.normal),),
                          ],
                        ),
                        margin: EdgeInsets.only(right: 44),
                      ),
                      GestureDetector(
                        onTap:(){
                          setState(() {
                            update(1);
                          });
                        } ,
                        child: Container(

                          width: 16,
                          height:16,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            shape: BoxShape.circle,
                            color: inactive,
                          ),
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
                          height: 453,
                          color: Color(0xffffffff),
                          padding: EdgeInsets.only(top: 32,left: 24,),
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(bottom: 16),
                                  width: 327,
                                  height: 29,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Enter 4 Digits Code', style: TextStyle(
                                        fontSize: 24,
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
                                          width: 24,
                                          height: 24,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(bottom: 40),
                                  width: 262,
                                  height: 44,
                                  child: Text('Enter the four digits code set to your email address',
                                    style: TextStyle(
                                      fontSize: 17,
                                      color: Color(0xff999999),
                                      fontWeight: FontWeight.normal,
                                      fontStyle: FontStyle.normal,
                                    ),
                                  ),
                                ),
                                Center(
                                  child: Container(
                                    height: 47,
                                    margin: EdgeInsets.only(bottom: 163),
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

                                GestureDetector(
                                  onTap: (){
                                    showBottomSheet(
                                      context: context,
                                      builder: (context) =>
                                          Container(
                                            height: 453,
                                            padding: EdgeInsets.only(top: 32,left: 24),
                                            child: SingleChildScrollView(
                                              child: Form(
                                                // autovalidateMode:
                                                // AutovalidateMode.always, //check for validation while typing
                                                key: _formKey,
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      width: 327,
                                                      height: 29,
                                                      margin: EdgeInsets.only(bottom: 16),
                                                      child: Row(
                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                        children: [
                                                          Text(
                                                            'Reset Password',
                                                            style: TextStyle(
                                                              color: Color(0xff3C673D),
                                                              fontStyle: FontStyle.normal,
                                                              fontWeight: FontWeight.bold,
                                                              fontSize: 24,
                                                            ),
                                                          ),
                                                          GestureDetector(
                                                            onTap:(){
                                                              Navigator.pop(context);
                                                            } ,
                                                            child: Container(
                                                              child: Image.asset('assets/images/x.png', color: Color(0xff000000),),
                                                              width: 24,
                                                              height: 24,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Container(
                                                      width: 303,
                                                      child: Text(
                                                        'Set the new password for your account so you can login and access the features',
                                                        style: TextStyle(
                                                          fontSize:17,
                                                          fontWeight: FontWeight.normal,
                                                          color: Color(0xff999999),
                                                        ),
                                                      ),
                                                      margin: EdgeInsets.only(bottom: 32),
                                                    ),
                                                    Container(
                                                      // width: 26.66.w,
                                                      height: 20,
                                                      child: Text(
                                                        'Password',
                                                        style: TextStyle(
                                                          color: Color(0xff10151a),
                                                          fontSize: 15,
                                                          fontStyle: FontStyle.normal,
                                                          fontWeight: FontWeight.w700,
                                                        ),
                                                      ),
                                                      margin: EdgeInsets.only(bottom: 16),
                                                    ),
                                                    Container(
                                                      width: 327,
                                                      height: 47,
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
                                                            fontSize: 15,
                                                          ),
                                                          decoration: InputDecoration(
                                                            suffixIcon: Image.asset('assets/images/redeye.png',color: Color(0xff999999),
                                                              width: 20.44, height:15.28,
                                                            ),
                                                            border: OutlineInputBorder(),
                                                            hintText: 'Enter Password',
                                                            hintStyle: TextStyle(
                                                              fontStyle: FontStyle.normal,
                                                              fontWeight: FontWeight.normal,
                                                              fontSize: 15,
                                                              color: Color(0xffbababa),
                                                            ),
                                                          ),
                                                          validator: MultiValidator([
                                                            RequiredValidator(errorText: 'password is required'),
                                                            MinLengthValidator(8, errorText: 'password must be at least 8 digits long'),
                                                            PatternValidator(r'(?=.*?[#?!@$%^&*-])', errorText: 'passwords must have at least one special character')
                                                          ])),
                                                      margin: EdgeInsets.only(bottom:16),
                                                    ),
                                                    Container(
                                                      // width: 26.66.w,
                                                      height: 20,
                                                      child: Text(
                                                        'Confirm Password',
                                                        style: TextStyle(
                                                          color: Color(0xff10151a),
                                                          fontSize: 15,
                                                          fontStyle: FontStyle.normal,
                                                          fontWeight: FontWeight.w700,
                                                        ),
                                                      ),
                                                      margin: EdgeInsets.only(bottom: 16),
                                                    ),
                                                    Container(
                                                      width: 327,
                                                      height: 47,
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
                                                          fontSize: 15,
                                                        ),
                                                        decoration: InputDecoration(
                                                          suffixIcon: Image.asset('assets/images/redeye.png',color: Color(0xff999999),
                                                            width: 20.44, height: 15.28,
                                                          ),
                                                          border: OutlineInputBorder(),
                                                          hintText: 'Enter Password',
                                                          hintStyle: TextStyle(
                                                            fontStyle: FontStyle.normal,
                                                            fontWeight: FontWeight.normal,
                                                            fontSize: 15,
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
                                                      margin: EdgeInsets.only(bottom: 36),
                                                    ),
                                                    GestureDetector(
                                                      onTap: () {
                                                        showDialog<String>(
                                                          context: context,
                                                          builder: (
                                                              BuildContext context) =>
                                                              AlertDialog(
                                                                insetPadding: EdgeInsets.only(left: 24, right: 24,top: 261, bottom: 350),
                                                                // contentPadding: EdgeInsets.symmetric(horizontal: 6.4.w,vertical:3.94.h),

                                                                content:Center(
                                                                  child:Container(
                                                                    width:279,
                                                                    // margin: EdgeInsets.only(bottom: 3.94.h),
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
                                                                actions: <
                                                                    Widget>[
                                                                  Center(
                                                                    child: GestureDetector(
                                                                      onTap:(){
                                                                        Navigator.push(context,MaterialPageRoute(builder: (context)=> SigninPage()),);
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
                                                      child: Container(
                                                        width: 327,
                                                        height: 47,
                                                        decoration: BoxDecoration(
                                                          color: Color(0xff3a953c),
                                                          borderRadius: BorderRadius.circular(5.0),
                                                        ),
                                                        child: Center(
                                                          child: Text('Save Password', style: TextStyle(
                                                            color: Color(0xffffffff),
                                                            fontStyle: FontStyle.normal,
                                                            fontWeight: FontWeight.w700,
                                                            fontSize: 16,
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
                                    width: 327,
                                    height: 47,
                                    decoration: BoxDecoration(
                                      color: Color(0xff3a953c),
                                      borderRadius: BorderRadius.circular(5.0),
                                    ),
                                    child: Center(
                                      child: Text('Continue', style: TextStyle(
                                        color: Color(0xffffffff),
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 16,
                                      ),),
                                    ),
                                    margin: EdgeInsets.only(bottom: 35),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                  );
                },
                child: Container(
                  width: 327,
                  height:47,
                  decoration: BoxDecoration(
                    color: Color(0xff3a953c),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: Center(
                    child: Text('Continue', style: TextStyle(
                      color: Color(0xffffffff),
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
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