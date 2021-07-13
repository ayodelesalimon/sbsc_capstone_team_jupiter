import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sbsc_capstone_team_jupiter/services/base.dart';
import 'package:validators/validators.dart' as validator;
import 'package:sbsc_capstone_team_jupiter/screen/account_profile.dart';

class EditProfile extends StatefulWidget {
  final String name = "editProfile";

  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {

  String userFirstName = '';
  String userEmail = '';
  String userLastName = '';
  Future<void> getFirstNameFromLocalStorage() async {
    final data = await getFromLocalStorage(name: 'firstName');
    setState(() {
      userFirstName = data;
    });
  }

  Future<void> getEmailFromLocalStorage() async {
    final data = await getFromLocalStorage(name: 'email');
    setState(() {
      userEmail = data;
    });
  }

  Future<void> getLastNameFromLocalStorage() async {
    final data = await getFromLocalStorage(name: 'lastName');
    setState(() {
      userLastName = data;
    });
  }

  @override
  void initState() {
    super.initState();

    getFirstNameFromLocalStorage().whenComplete(() => null);
    getEmailFromLocalStorage().whenComplete(() => null);
    getLastNameFromLocalStorage().whenComplete(() => null);
  }

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
            width: 375,
            height: 812,
            child: Column(
              children: [
                Container(
                  padding:
                      EdgeInsets.only(top: 40, right: 24, left: 24, bottom: 17),
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
                      GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Image.asset(
                            'assets/images/back.png',
                            width: 23,
                            height: 14,
                          )),
                      Text(
                        "Edit Profile",
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff819272)),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 327,
                  margin: EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 48,
                      ),
                      Container(
                        child: Center(
                          child: Stack(
                            children: [
                              Image.asset(
                                'assets/images/client.png',
                                width: 129,
                                height: 129,
                              ),
                              Positioned(
                                top: 0,
                                right: 0,
                                child: Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        color: Colors.white, width: 3),
                                    color: Color(0xff979797),
                                  ),
                                  child: Image.asset(
                                    'assets/images/photo.png',
                                    width: 16,
                                    height: 14,
                                    color: Color(0xffffffff),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 72,
                      ),
                      Container(
                        // width: 26.66.w,
                        height: 20,
                        child: Text(
                          'First Name',
                          style: TextStyle(
                            color: Color(0xff10151a),
                            fontSize: 15,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Container(
                        width: 327,
                        height: 47,
                        decoration: BoxDecoration(
                          color: Color(0xfff7f7f7),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: TextFormField(
                       //   initialValue: userFirstName,
                          textAlign: TextAlign.start,
                          keyboardType: TextInputType.text,
                          style: TextStyle(
                            color: Colors.black,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.normal,
                            fontSize: 15,
                          ),
                          decoration: InputDecoration(
                          
                            border: OutlineInputBorder(),
                           hintText: userFirstName,
                            hintStyle: TextStyle(
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.normal,
                              fontSize: 15,
                              color: Color(0xffbababa),
                            ),
                          ),
                          onSaved: (value) {
                            firstname = value as TextEditingController;
                          },
                        ),
                      ),
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
                      Container(
                        width: 327,
                        height: 47,
                        decoration: BoxDecoration(
                          color: Color(0xfff7f7f7),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: TextFormField(
                         // initialValue: userLastName,
                          textAlign: TextAlign.start,
                          keyboardType: TextInputType.text,
                          style: TextStyle(
                            color: Colors.black,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.normal,
                            fontSize: 15,
                          ),
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: userLastName,
                            hintStyle: TextStyle(
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.normal,
                              fontSize: 15,
                              color: Color(0xffbababa),
                            ),
                          ),
                          onSaved: (value) {
                            lastname = value as TextEditingController;
                          },
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                        'Phone Number',
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
                      Container(
                        width: 327,
                        height: 47,
                        decoration: BoxDecoration(
                          color: Color(0xfff7f7f7),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: TextFormField(
                          textAlign: TextAlign.start,
                          keyboardType: TextInputType.text,
                          style: TextStyle(
                            color: Colors.black,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.normal,
                            fontSize: 15,
                          ),
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: '+234 809 202 3024',
                            hintStyle: TextStyle(
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.normal,
                              fontSize: 15,
                              color: Color(0xffbababa),
                            ),
                          ),
                          // validator:(value){
                          //   if(value == ''){
                          //     return 'FullName is required.';
                          //   }
                          // },
                          onSaved: (value) {
                            phone = value as TextEditingController;
                          },
                        ),
                      ),
                      SizedBox(height: 74),
                      Center(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Profile()),
                            );
                          },
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
