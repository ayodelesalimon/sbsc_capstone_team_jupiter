import 'package:flutter/material.dart';
import 'package:sbsc_capstone_team_jupiter/constants.dart';
import 'package:sbsc_capstone_team_jupiter/widgets/colors.dart';
import 'package:sbsc_capstone_team_jupiter/widgets/input.dart';
import 'package:validators/validators.dart' as validator;

class EditProfile extends StatefulWidget {
  final String name = "editProfile";
  const EditProfile({Key key}) : super(key: key);

  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  TextEditingController firstname = TextEditingController();
  TextEditingController lastname = TextEditingController();
  TextEditingController phone = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    // final height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: width,
                height: 120,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.arrow_back,
                          size: 30,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Edit Profile",
                        style:
                            TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24.0, right: 24.0),
                child: SingleChildScrollView(
                  child: Container(
                    child: Column(
                      children: [
                        spacer30,
                        Center(
                          child: Stack(
                            children: [
                              CircleAvatar(
                                maxRadius: 90,
                                backgroundColor: Colors.red,
                              ),
                              Positioned(
                                top: 20,
                                left: 140,
                                child: CircleAvatar(
                                    backgroundColor: Colors.grey,
                                    child: IconButton(
                                        icon: Icon(Icons.image),
                                        onPressed: () {})),
                              )
                            ],
                          ),
                        ),
                        spacer30,
                        Row(
                          children: [
                            Text(
                              'First Name',
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
                          controller: firstname,

                          hintText: 'First Name',

                          styleColor: primaryColor,
                          obscureText: false,
                          hintStyleColor: Color(0xFF7C7C7C),
                          // validator: (String value) {
                          //   if (!validator.isAlpha(value) && value.length < 1) {
                          //     return 'First Name is required';
                          //   }

                          // },
                        ),
                        SizedBox(
                          height: 14,
                        ),
                        Row(
                          children: [
                            Text(
                              'Last Name',
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
                          height: 10,
                        ),
                        Input(
                          //focusNode: emailFocus,
                          controller: lastname,

                          hintText: 'Last Name',

                          styleColor: primaryColor,
                          obscureText: false,
                          hintStyleColor: Color(0xFF7C7C7C),
                          // validator: (String value) {
                          //   if (!validator.isAlpha(value) && value.length < 1) {
                          //     return 'First Name is required';
                          //   }

                          // },
                        ),
                        SizedBox(
                          height: 14,
                        ),
                        Row(
                          children: [
                            Text(
                              'Phone',
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
                          controller: phone,

                          hintText: '+2345969565765',

                          styleColor: primaryColor,
                          obscureText: false,
                          hintStyleColor: Color(0xFF7C7C7C),
                          validator: (String value) {
                            if (!validator.isNumeric(value) && value.length < 1) {
                              return 'Number is required';
                            }
                          },
                        ),
                        spacer10,
                        Center(
                            child: GestureDetector(
                          onTap: () {
                            // setState(() {
                            //   if (_formKey.currentState.validate()) {
                            //     print('perfect');
                            //   } else {
                            //     return null;
                            //   }
                            // Navigator.of(context).push(
                            //   MaterialPageRoute(
                            //     settings: RouteSettings(name: "/home"),
                            //     builder: (context) => TabView(),
                            //   ),
                            // );
                            //  });
                          },
                          child: Container(
                              width: 360,
                              height: 52,
                              decoration: BoxDecoration(
                                color: primaryColor,
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              child: Center(
                                child: Text(
                                  'Save Changes',
                                  style: TextStyle(
                                    color: Color(0xffffffff),
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16,
                                  ),
                                ),
                              )),
                        ))
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
