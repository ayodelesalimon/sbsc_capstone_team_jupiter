import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:validators/validators.dart' as validator;

class EditProfile extends StatefulWidget {
  final String name = "editProfile";

  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  TextEditingController firstname = TextEditingController();
  TextEditingController lastname = TextEditingController();
  TextEditingController phone = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // final width = MediaQuery.of(context).size.width;
    // final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            width:375,
            height:812,
            child: Column(

              children: [
                Container(
                  padding: EdgeInsets.only(top: 40,right: 24,left: 24,bottom: 17),
                  width: 375,
                  height: 116,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white.withOpacity(0.1),
                        spreadRadius: 2,
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset('assets/images/back.png', width: 23,height: 14,),
                      Text(
                        "Edit Profile",
                        style:
                        TextStyle(fontSize: 24, fontWeight: FontWeight.bold,color: Color(0xff819272)),
                      ),
                    ],
                  ),
                ),
                Container(
                  width:327,
                  margin: EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height:48 ,),
                      Container(
                        child: Center(
                          child: Stack(
                            children: [
                              Image.asset('assets/images/client.png', width: 129,height: 129,),
                              Positioned(
                                top: 0,
                                right: 0,
                                child: Container(
                                  width: 40,height: 40,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(color: Colors.white,width: 3),
                                    color: Color(0xff979797),
                                  ),
                                  child: Image.asset('assets/images/photo.png',width: 16,height: 14,color: Color(0xffffffff),),
                                ),
                              ),
                            ],
                          ),
                        ),),
                      SizedBox(
                        height: 72,
                      ),
                      Text(
                        'First Name',
                        style: TextStyle(
                          color: Color(0xff10151a),
                          fontSize: 15,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      // Input(
                      //   //focusNode: emailFocus,
                      //   controller: firstname,
                      //
                      //   hintText: 'First Name',
                      //
                      //   styleColor: Colors.black,
                      //   obscureText: false,
                      //   hintStyleColor: Color(0xFFbababa),
                      //   // validator: (String value) {
                      //   //   if (!validator.isAlpha(value) && value.length < 1) {
                      //   //     return 'First Name is required';
                      //   //   }
                      //
                      //   // },
                      // ),
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                        'Last Name',
                        style: TextStyle(
                          color: Color(0xff10151a),
                          fontSize: 15,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      // Input(
                      //   //focusNode: emailFocus,
                      //   controller: lastname,
                      //
                      //   hintText: 'Last Name',
                      //   styleColor: Colors.black,
                      //   obscureText: false,
                      //   hintStyleColor: Color(0xFFbababa),
                      //   // validator: (String value) {
                      //   //   if (!validator.isAlpha(value) && value.length < 1) {
                      //   //     return 'First Name is required';
                      //   //   }
                      //
                      //   // },
                      // ),
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                        'Phone',
                        style: TextStyle(
                          color: Color(0xff10151a),
                          fontSize: 15,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      // Input(
                      //   //focusNode: emailFocus,
                      //   controller: phone,
                      //
                      //   hintText: '+234 809 202 3024',
                      //   styleColor: primaryColor,
                      //   obscureText: false,
                      //   hintStyleColor: Color(0xFFbababa),
                      //   validator: (String value) {
                      //     if (!validator.isNumeric(value) && value.length < 1) {
                      //       return 'Number is required';
                      //     }
                      //   },
                      // ),
                      SizedBox(height:74),
                      Center(
                        child: GestureDetector(
                          onTap:(){},
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xff3A953C),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Center(
                              child: Text(
                                'Save Changes',
                                style: TextStyle(
                                    color: Color(0xffffffff),
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            width: 327,
                            height: 47,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

