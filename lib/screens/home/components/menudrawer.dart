import 'package:flutter/material.dart';
import 'package:sbsc_capstone_team_jupiter/constants.dart';

class MyDrawer extends StatefulWidget {
  // final Function onTap;
  //
  // MyDrawer({required this.onTap});

  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: Stack(
        children:[
          Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.transparent,
          ),
          Container(
            
          width: 304,
           height: MediaQuery.of(context).size.height,
          child: Drawer(
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
                    padding:EdgeInsets.only(left: 18,),
                    child: Container(
                      width: 232,
                      height: 40,
                      child: Center(
                        child: Row(
                           crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: 40,
                              height: 40,
                              child: Image.asset('assets/images/Profile.png'),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                            ),
                           SizedBox(width: 20,),
                            Container(
                              child: Text(
                                'Andrea Charles',
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
                SizedBox(height:8),
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
                        onTap: () {},
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
                                style: drawerTextStyle
                              ),
                            ],
                          ),
                        ),
                      ),
                      spacer20,
                      GestureDetector(
                        onTap: () {},
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
                                style: drawerTextStyle
                              ),
                            ],
                          ),
                        ),
                      ),
                       spacer20,
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: 127,
                          height: 24,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 17,
                                height: 14.99,
                                child: Image.asset('assets/images/favourite.png'),
                              ),
                              SizedBox(width: 19),
                              Text(
                                'My Wishlist',
                                style: drawerTextStyle
                              ),
                            ],
                          ),
                        ),
                      ),
                      spacer20,
                      GestureDetector(
                        onTap: () {},
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
                                style: drawerTextStyle
                              ),
                            ],
                          ),
                        ),
                      ),
                      spacer20,
                      GestureDetector(
                        onTap: () {},
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
                                style: drawerTextStyle
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                spacer20,
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
                SizedBox(height: 20),

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
                            style: drawerTextStyle
                          ),),),
                        SizedBox(height: 32,),
                      GestureDetector(
                          onTap: () {},
                          child: Container(
                            height: 23,
                            width: 97,
                            child: Text(
                              'Help & FAQs',
                              style: drawerTextStyle
                            ),
                          ),
                      ),
                    ],
                  ),
                ),
                spacer10,
                Container(
                  width: 89.46,
                  height: 48.7,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/logo.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  margin: EdgeInsets.only(
                    left:106.97,
                  ),
                ),
                SizedBox(height: 25.0,),
                Container(
                 
                  
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
                          fontSize: 15,
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
                child: Image.asset('assets/images/close.png', width: 14,height:14,color: Color(0xffffffff),),
              ),
              onTap: (){
                Navigator.pop(context);
              },
            ),

          ),
        ],
      ),
    );
  }
}

//
//             DrawerHeader(
//               decoration: BoxDecoration(
//                 color: Colors.deepPurple,
//               ),
//               child: Padding(
//                 padding: EdgeInsets.all(6),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Container(
//                       height: 60,
//                       width: 60,
//                       child: CircleAvatar(
//                         backgroundColor: Colors.purpleAccent,
//                         child: Icon(Icons.people, color:Colors.white),
//                       ),
//                     ),
//                     SizedBox(
//                       height:10,
//                     ),
//                     Text('$email',
//                       style: TextStyle(color: Colors.white, fontSize: 16, fontStyle:FontStyle.italic,fontFamily: 'amatic', ),
//                     ),
//
//                   ],
//                 ),
//               ),
//             ),
//             InkWell(
//               splashColor: Colors.deepPurple,
//               child: ListTile(
//                 leading: Icon(Icons.home, color: Colors.purpleAccent,),
//                 title: Text('Home',style:TextStyle(fontSize: 14),),
//                 onTap: (){
//                   Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()),
//                   );
//                 },
//               ),
//             ),
//             Divider(
//               height: 1,
//               color: Colors.black38,
//             ),
//
//             InkWell(
//               splashColor: Colors.deepPurple,
//               child: ListTile(
//                 leading: Icon(Icons.person, color: Colors.purpleAccent,),
//                 title: Text('Profile',style:TextStyle(fontSize: 14),),
//                 onTap: (){
//                   Navigator.push(context, MaterialPageRoute(builder: (context) => Profile()),);
//                 },
//               ),
//             ),
//
//             InkWell(
//               splashColor: Colors.deepPurple,
//               child: ListTile(
//                 leading: Icon(Icons.upgrade, color: Colors.purpleAccent,),
//                 title: Text('Premium Subscription',style:TextStyle(fontSize: 14),),
//                 onTap: (){
//                   Navigator.push(context, MaterialPageRoute(builder: (context) => WelcomeScreen()),);
//                 },
//               ),
//             ),
//
//             InkWell(
//               splashColor: Colors.deepPurple,
//               child: ListTile(
//                 leading: Icon(Icons.settings, color: Colors.purpleAccent,),
//                 title: Text('Setting',style:TextStyle(fontSize: 14),),
//                 onTap: (){
//                   Navigator.push(context, MaterialPageRoute(builder: (context) => RegistrationScreen()),);
//                 },
//               ),
//             ),
//             InkWell(
//               splashColor: Colors.deepPurple,
//               child: ListTile(
//                 leading: Icon(Icons.exit_to_app_outlined, color: Colors.purpleAccent,),
//                 title: Text('Sign-out',style:TextStyle(fontSize: 14),),
//                 onTap: (){
//                   _auth.signOut();
//                   Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()),);
//                 },
//               ),
//             ),
//           ],
//         ),
//       ) ,
//     );
//
//   }
// }
