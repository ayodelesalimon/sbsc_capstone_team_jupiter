import 'package:flutter/material.dart';
import 'package:sbsc_capstone_team_jupiter/screen/account/account_order.dart';
import 'package:sbsc_capstone_team_jupiter/screen/account/account_profile.dart';
import 'package:sbsc_capstone_team_jupiter/screen/cart.dart';
import 'package:sbsc_capstone_team_jupiter/screen/category/category.dart';
//import 'package:sbsc_capstone_team_jupiter/screen/category_search.dart';
import 'package:sbsc_capstone_team_jupiter/screen/wishlist.dart';
import 'package:sbsc_capstone_team_jupiter/services/base.dart';

//import 'category.dart';
class MyDrawer extends StatefulWidget {
  // final Function onTap;
  //
  // MyDrawer({required this.onTap});

  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
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
   
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children:[
        Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.transparent,
        ),
        Container(
          width: 304,
          height: 812,
          child: Drawer(
            child: SingleChildScrollView(
              // scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment:CrossAxisAlignment.start,
                children: [
                  DrawerHeader(
                    decoration: BoxDecoration(
                      color: Color(0xffffffff),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xffffffff).withOpacity(0.05),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding:EdgeInsets.symmetric(vertical: 40, horizontal: 36),
                      child: Container(
                        width: 232,
                        height: 40,
                        child: Center(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 40,
                                height: 40,
                                child: Image.asset('assets/images/Profile.png'),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                              ),
                              SizedBox(width: 16,),
                              Container(
                                child:  Text(
                                '$userFirstName ' ' $userLastName',
                                  style: TextStyle(
                                    color: Color(0xff000000),
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height:38),
                  Container(
                    width: 161,
                    // height: 248,
                    margin: EdgeInsets.only(
                      // top: 38,
                      left: 36,
                      // bottom: 26,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => CartPage()),);
                          },
                          child: Container(
                            width: 74,
                            height: 24,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 17.7,
                                  height: 17,
                                  child: Image.asset('assets/images/cart.png'),
                                ),
                                SizedBox(width: 19.3,),
                                Text(
                                  'Cart',
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: Color(0xff10151a),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 33,),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => CategoryPage()),);
                          },
                          child: Container(
                            width: 123,
                            height: 24,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 18,
                                  height: 18,
                                  child: Image.asset('assets/images/box.png'),
                                ),
                                SizedBox(width: 19.3),
                                Text(
                                  'Categories',
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: Color(0xff10151a),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 33,),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => WishListPage()),);
                          },
                          child: Container(
                            width: 127,
                            height: 24,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 17,
                                  height: 14.99,
                                  child: Image.asset('assets/images/love.png'),
                                ),
                                SizedBox(width: 19),
                                Text(
                                  'My Wishlist',
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: Color(0xff10151a),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 33.5,),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => OrdersPage()),);
                          },
                          child: Container(
                            width: 93,
                            height: 24,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 17.7,
                                  height: 17,
                                  child: Image.asset('assets/images/cart.png'),
                                ),
                                SizedBox(width: 19.3,),
                                Text(
                                  'Orders',
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: Color(0xff10151a),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 32.5,),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Profile()),);
                          },
                          child: Container(
                            width: 161,
                            height: 24,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 17,
                                  height: 17,
                                  child: Image.asset('assets/images/user.png'),
                                ),
                                SizedBox(width: 19,),
                                Text(
                                  'Account Details',
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: Color(0xff10151a),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 26,),
                  Container(
                    width: 304,
                    height: 48,
                    color: Color(0xff999999),
                    padding: EdgeInsets.only(
                      left: 40,
                      top: 14,
                    ),
                    child: GestureDetector(
                      onTap: (){},
                      child: Text(
                        'Support',
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 44),

                  Padding(
                    padding: const EdgeInsets.only(left:36),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            width: 86,
                            height: 23,
                            child: Text(
                              'Contact us',
                              style: TextStyle(
                                fontSize: 17,
                                color: Color(0xff10151a),
                              ),
                            ),),),
                        SizedBox(height: 32,),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            height: 23,
                            width: 97,
                            child: Text(
                              'Help & FAQs',
                              style: TextStyle(
                                fontSize: 17,
                                color: Color(0xff10151a),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 73.16,),
                  Container(
                    width: 89.46,
                    height: 48.7,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/aduabafresh.png'),
                        fit: BoxFit.contain,
                      ),
                    ),
                    margin: EdgeInsets.only(
                      left:106.97,
                    ),
                  ),
                  SizedBox(height: 31.14,),
                  Container(
                    width: 202.04,
                    height: 17,
                    margin: EdgeInsets.only(
                      left: 51,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Privacy policy',
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xff999999),
                          ),
                        ),
                        SizedBox(width: 16.5,),
                        Text(
                          '.',
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xff999999),
                          ),
                        ),
                        SizedBox(width: 16.5,),
                        Text(
                          'Terms of use',
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xff999999),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          top:266,
          left:288,
          child: GestureDetector(
            child: Container(
              height: 32,
              width:32,
              decoration: BoxDecoration(
                color: Color(0xff000000),
                shape: BoxShape.circle,
              ),
              child: Image.asset('assets/images/x.png', width: 14,height:14,color: Color(0xffffffff),),
            ),
            onTap: (){
              Navigator.pop(context);
            },
          ),

        ),
      ],
    );
  }
}