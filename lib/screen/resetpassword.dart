import 'package:flutter/material.dart';
import 'package:otp_text_field/style.dart';
import 'package:sbsc_capstone_team_jupiter/screens/auth/login.dart';
import 'package:sizer/sizer.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:form_field_validator/form_field_validator.dart';
//import 'package:sbsc_capstone_team_jupiter/login.dart';


class ForgotPage extends StatefulWidget {
  @override
  _ForgotPageState createState() => _ForgotPageState();
}

class _ForgotPageState extends State<ForgotPage> {
  var _formKey = GlobalKey<FormState>();

  TextEditingController password =TextEditingController();
  TextEditingController confirmpassword =TextEditingController();

  // Color inactiveColorSms = Colors.transparent;
  // Color inactiveColorMail = Colors.transparent;
  //
  // FontWeight inactiveFontSms = FontWeight.normal;
  // FontWeight inactiveFontMail = FontWeight.normal;
  //
  // void updateButton(Button selectedbutton){
  //   if (selectedbutton == Button.smsButton){
  //     if (inactiveColorSms == Colors.transparent){
  //       inactiveColorSms = Colors.green;
  //       inactiveFontSms = FontWeight.bold;
  //       inactiveFontMail = FontWeight.normal;
  //       inactiveColorMail = Colors.transparent;
  //     }
  //     else{
  //       inactiveColorSms = Colors.transparent;
  //       inactiveFontSms = FontWeight.normal;
  //     }
  //   }
  //
  //   if (selectedbutton == Button.mailButton){
  //     if (inactiveColorMail == Colors.transparent){
  //       inactiveColorMail = Colors.green;
  //       inactiveFontMail = FontWeight.bold;
  //       inactiveFontSms = FontWeight.normal;
  //       inactiveColorSms = Colors.transparent;
  //     }
  //     else{
  //       inactiveColorMail = Colors.transparent;
  //       inactiveFontMail = FontWeight.normal;
  //     }
  //   }
  // }

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


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          // padding: EdgeInsets.only(top:10.34, right: 6.4, left: 6.4,),
          padding: EdgeInsets.only(
            top: 10.34,
            right: 6.4,
            left: 6.4,
          ),
          width: 100,
          height: 100,
          color: Color.fromRGBO(255, 255, 255, 0.63),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 87.2,
                height: 8.37,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      // margin: EdgeInsets.only(right:9.86),
                      width: 64,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Forgot Password',
                            style: TextStyle(
                             // fontWeight: FontWeight700,
                              fontStyle: FontStyle.normal,
                              fontSize: 24.sp,
                              letterSpacing: 0.053,
                              color: Color(0xff10151a),
                            ),
                          ),
                          Text(
                            'to your account',
                            style: TextStyle(
                             // fontWeight: FontWeight700,
                              fontStyle: FontStyle.normal,
                              fontSize: 24.sp,
                              letterSpacing: 0.053,
                              color: Color(0xff10151a),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 13.3,
                      height: 6.15,
                      child: CircleAvatar(
                        backgroundColor: Color.fromRGBO(58, 149, 60, 0.1),
                        child: Image.asset(
                          'assets/images/reset.png',
                          width: 4.26,
                          height: 1.97,
                        ),
                      ),
                    ),
                  ],
                ),
                margin: EdgeInsets.only(bottom:1.97),
              ),
              Container(
                width: 69.86,
                // height: 5.41,
                child: Text('Select what contact details we use to reset your password',
                  style:TextStyle(
                    fontWeight: FontWeight.normal,
                    fontStyle: FontStyle.normal,
                    fontSize: 17.sp,
                    color: Color(0xff999999),
                  ),
                ),
                margin: EdgeInsets.only(bottom:4.80),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 3.57),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:[
                      Container(
                        width: 11.73,
                        height: 5.41,
                        child: Stack(
                          children: [
                            Image.asset(
                              'assets/images/Rectangle.png',
                              width: 11.73,
                              height: 5.41,
                            ),
                            Center(
                              child: Image.asset(
                                'assets/images/phone.png',
                                width: 4.0,
                                height: 2.95,
                              ),
                            ),
                          ],
                        ),
                        margin: EdgeInsets.only(right: 6.4),
                      ),
                      Container(
                        width: 52,
                        height: 5.41,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('via sms', style: TextStyle(color:Color(0xff10151A),fontSize: 16.sp,fontWeight: FontWeight.bold ),),
                            Text('*** **** 7767',style: TextStyle(color:Color(0xff999999),fontSize: 14.sp,fontWeight: inactivefont),),
                          ],
                        ),
                        margin: EdgeInsets.only(right: 12.2),
                      ),
                      GestureDetector(
                        onTap:(){
                          setState(() {
                            update(1);
                          });
                        } ,
                        child: Container(

                          width: 4.26,
                          height:1.97,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            shape: BoxShape.circle,
                            color: inactive,
                          ),
                          // child: Image.asset(
                          //   'assets/images/Oval.png',
                          //   width: 4.26,
                          //   height:1.97,
                          //   color: Colors.black
                          // ),
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
                margin: EdgeInsets.only(bottom:3.57),
              ),
              Container(
                margin: EdgeInsets.only(bottom:39.65),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:[
                      Container(
                        width: 11.73,
                        height: 5.41,
                        child: Stack(
                          children: [
                            Image.asset(
                              'assets/images/Rectangle.png',
                              width: 11.73,
                              height: 5.41,
                            ),
                            Center(
                              child: Image.asset(
                                'assets/images/mail.png',
                                width: 5.3,
                                height: 1.97,
                              ),
                            ),
                          ],
                        ),
                        margin: EdgeInsets.only(right: 6.4),
                      ),
                      Container(
                        width: 52,
                        height: 5.41,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('via email:', style: TextStyle(color:Color(0xff10151A),fontSize: 16.sp,fontWeight:FontWeight.bold),),
                            Text('*******vid@gmail.com',style: TextStyle(color:Color(0xff999999),fontSize: 14.sp,fontWeight:inactivefont),),
                          ],
                        ),
                        margin: EdgeInsets.only(right: 12.2),
                      ),
                      GestureDetector(
                        onTap:(){
                          setState(() {
                            update(2);
                          });
                        },
                        child: Container(

                          width: 4.26,
                          height:1.97,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            shape: BoxShape.circle,  color: active,
                          ),
                        ),
                      ),
                    ]
                ),
              ),
              InkWell(
                onTap: (){
                  showBottomSheet(
                    context: context,
                    builder: (context) =>
                        Container(
                          height: 55.7,
                          color: Color(0xffffffff),
                          padding: EdgeInsets.only(top: 3.94,left: 6.4,),
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(bottom: 1.97),
                                  width: 87.2,
                                  height: 3.57,
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
                                          width: 3.2,
                                          height: 1.47,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(bottom: 4.93),
                                  width: 69.86,
                                  height: 5.42,
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
                                    height: 5.79,
                                    margin: EdgeInsets.only(bottom: 20.073),
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
                                      // fieldWidth: 20.2,
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
                                            height: 55.78,
                                            padding: EdgeInsets.only(top: 3.94,left: 6.4),
                                            child: SingleChildScrollView(
                                              child: Form(
                                                autovalidateMode:
                                                AutovalidateMode.always, //check for validation while typing
                                                key: _formKey,
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      width: 87.2,
                                                      height: 3.571,
                                                      margin: EdgeInsets.only(bottom: 1.97),
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
                                                              width: 3.2,
                                                              height: 1.47,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Container(
                                                      width: 80.8,
                                                      child: Text(
                                                        'Set the new password for your account so you can login and access the features',
                                                        style: TextStyle(
                                                          fontSize:17.sp,
                                                          fontWeight: FontWeight.normal,
                                                          color: Color(0xff999999),
                                                        ),
                                                      ),
                                                      margin: EdgeInsets.only(bottom: 3.94),
                                                    ),
                                                    Container(
                                                      // width: 26.66,
                                                      height: 2.46,
                                                      child: Text(
                                                        'Password',
                                                        style: TextStyle(
                                                          color: Color(0xff10151a),
                                                          fontSize: 15.sp,
                                                          fontStyle: FontStyle.normal,
                                                         // fontWeight: FontWeight700,
                                                        ),
                                                      ),
                                                      margin: EdgeInsets.only(bottom: 1.97),
                                                    ),
                                                    Container(
                                                      width: 87.2,
                                                      height: 5.788,
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
                                                              width: 5.45, height: 1.88,
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
                                                      margin: EdgeInsets.only(bottom: 1.97),
                                                    ),
                                                    Container(
                                                      // width: 26.66,
                                                      height: 2.46,
                                                      child: Text(
                                                        'Confirm Password',
                                                        style: TextStyle(
                                                          color: Color(0xff10151a),
                                                          fontSize: 15.sp,
                                                          fontStyle: FontStyle.normal,
                                                        //  fontWeight: FontWeight700,
                                                        ),
                                                      ),
                                                      margin: EdgeInsets.only(bottom: 1.97),
                                                    ),
                                                    Container(
                                                      width: 87.2,
                                                      height: 5.788,
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
                                                            width: 5.45, height: 1.88,
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
                                                      margin: EdgeInsets.only(bottom: 4.43),
                                                    ),
                                                    GestureDetector(
                                                      onTap: () {
                                                        showDialog<String>(
                                                          context: context,
                                                          builder: (
                                                              BuildContext context) =>
                                                              AlertDialog(
                                                                insetPadding: EdgeInsets.only(left: 6.4, right: 6.4,top: 32.1, bottom: 43.1),
                                                                // contentPadding: EdgeInsets.symmetric(horizontal: 6.4,vertical:3.94),

                                                                content:Center(
                                                                  child:Container(
                                                                    width:74.4,
                                                                    // margin: EdgeInsets.only(bottom: 3.94),
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

                                                                        Navigator.push(context,MaterialPageRoute(builder: (context)=> LoginPage()),);
                                                                      },
                                                                      child: Container(
                                                                        width: 74.4,
                                                                        height: 5.78,
                                                                        decoration: BoxDecoration(
                                                                          color: Color(0xff3a953c),
                                                                          borderRadius: BorderRadius.circular(5.0),
                                                                        ),
                                                                        child: Center(
                                                                          child: Text('Sign in', style: TextStyle(
                                                                            color: Color(0xffffffff),
                                                                            fontStyle: FontStyle.normal,
                                                                            //fontWeight: FontWeight700,
                                                                            fontSize: 16.sp,
                                                                          ),),
                                                                        ),),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                        );},
                                                      child: Container(
                                                        width: 87.2,
                                                        height: 5.78,
                                                        decoration: BoxDecoration(
                                                          color: Color(0xff3a953c),
                                                          borderRadius: BorderRadius.circular(5.0),
                                                        ),
                                                        child: Center(
                                                          child: Text('Save Password', style: TextStyle(
                                                            color: Color(0xffffffff),
                                                            fontStyle: FontStyle.normal,
                                                            //fontWeight: FontWeight700,
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
                                    width: 87.2,
                                    height: 5.78,
                                    decoration: BoxDecoration(
                                      color: Color(0xff3a953c),
                                      borderRadius: BorderRadius.circular(5.0),
                                    ),
                                    child: Center(
                                      child: Text('Continue', style: TextStyle(
                                        color: Color(0xffffffff),
                                        fontStyle: FontStyle.normal,
                                       // fontWeight: FontWeight700,
                                        fontSize: 16.sp,
                                      ),),
                                    ),
                                    margin: EdgeInsets.only(bottom: 2.95),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                  );
                },
                child: Container(
                  width: 87.2,
                  height: 5.78,
                  decoration: BoxDecoration(
                    color: Color(0xff3a953c),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: Center(
                    child: Text('Continue', style: TextStyle(
                      color: Color(0xffffffff),
                      fontStyle: FontStyle.normal,
                      //fontWeight: FontWeight700,
                      fontSize: 16.sp,
                    ),),
                  ),
                  margin: EdgeInsets.only(bottom: 2.95),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
