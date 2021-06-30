import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:sbsc_capstone_team_jupiter/constants.dart';
import 'package:sbsc_capstone_team_jupiter/screens/account/edit_profile.dart';

import '../tab_controller.dart';

class Profile extends StatefulWidget {
  final String name = 'profilePage';
  const Profile({Key key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
   // final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
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
                  Icon(
                    Icons.arrow_back,
                    size: 30,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Account",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 24.0, right: 24.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 25,
                            child: Image.asset("assets/images/Profile.png"),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Oga Hafis",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w700),
                              ),
                              spacer5,
                              Text("ogahafis@sbsc.com"),
                              spacer5,
                              Text("+@346969699666")
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          IconButton(
                              icon: Icon(Icons.edit_outlined),
                              onPressed: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    settings:
                                        RouteSettings(name: "/editProfile"),
                                    builder: (context) => EditProfile(),
                                  ),
                                );
                              }),
                          SizedBox(
                            height: 30,
                          )
                        ],
                      )
                    ],
                  ),
                  spacer40,
                  ListTile(
                    leading: Icon(
                      Icons.favorite_outlined,
                      color: Colors.red,
                    ),
                    title: Text("My WishList"),
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(
                      Icons.shopping_cart,
                      color: Colors.deepOrange,
                    ),
                    title: Text("My Orders"),
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(
                      Icons.credit_card,
                      color: Colors.green,
                    ),
                    title: Text("Payments"),
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(
                      Icons.delivery_dining,
                      color: Colors.yellow,
                    ),
                    title: Text("Shipping Details"),
                  ),
                  Divider(
                    thickness: 1,
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.settings,
                      color: Colors.grey,
                    ),
                    title: Text("Settings"),
                  ),
                  Divider(
                    thickness: 1,
                  ),
                ],
              ),
            ),
          ),
          spacer50,
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
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Center(
                  child: Text(
                    'Log Out',
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
        ],
      ),
    );
  }
}
