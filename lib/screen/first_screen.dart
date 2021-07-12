// import 'dart:async';

// import 'package:flutter/material.dart';
// import 'package:sbsc_capstone_team_jupiter/screens/auth/login.dart';
// import 'package:sizer/sizer.dart';
// import 'package:sbsc_capstone_team_jupiter/screen/second_screen.dart';
// import 'package:sbsc_capstone_team_jupiter/screen/login.dart';
// import 'package:sbsc_capstone_team_jupiter/screen/create_account.dart';

// final carouselItemList= [
//   CarouselItem(bgImg: 'assets/splash1.png', title: 'Explore Fresh Organic Products Everyday' , description: 'Search through a variety of products that help you keep fit and healthy',),
//   CarouselItem(bgImg: 'assets/splash2.png', title: 'Eat healthy, Spend Wisely. Be Happy' , description: 'Discover products by our vendors at very affordable prices',),
//   CarouselItem(bgImg: 'assets/splash3.png', title: 'Fast Delivery within 24 hours of purchase', description: 'Worried about time? Don’t stress, our products are at our doorstep before sunset',),

// ];


// class FirstScreen extends StatefulWidget {
//   @override
//   _FirstScreenState createState() => _FirstScreenState();
// }

// class _FirstScreenState extends State<FirstScreen> {

//   int _currentPage = 0;
//    String bgImg =  'assets/splash1.png';

//   _onPageChanged(int index){
//     setState(() {
//       _currentPage =index;
//     });
//   }

//   startTime() async{
//     var duration = Duration(seconds: 10);
//     return Timer(duration, route);
//   }

//   route(){
//     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>  SecondScreen()),);
//   }

//   @override
//   Widget build(BuildContext context) {
//     if(carouselItemList[_currentPage].title =='Explore Fresh Organic Products Everyday'){
//       bgImg = 'assets/splash1.png';}
//     else if(carouselItemList[_currentPage].title ==  'Eat healthy, Spend Wisely. Be Happy' ){
//       bgImg = 'assets/splash2.png';
//     }
//     else {
//       bgImg = 'assets/splash3.png';
//     }
//     return Scaffold(
//       body: Container(
//         // child: GestureDetector(
//         //   onTap: (){
//         //     Navigator.push(context,MaterialPageRoute(builder: (context)=>SecondScreen()),);
//         //   },
//           child: 
          
//           Stack(
//             children: [
//             Image.asset(
//             bgImg,
//             fit: BoxFit.cover,
//             height: double.infinity,
//             width: double.infinity,),
//               Container(
//                 height: 100.h,
//                 width: 100.w,
//                 decoration: BoxDecoration(
//                     gradient: LinearGradient(
//                       begin: FractionalOffset.topCenter,
//                       end: FractionalOffset.bottomCenter,
//                       colors: [ Color.fromRGBO(242, 144, 47, 0.4),
//                         Color.fromRGBO(58, 149, 60, 0.16),
//                         Color.fromRGBO(0, 0, 0, 0.78)
//                       ],
//                       /*stops: [
//                         0,0.41,1.0
//                   ]
//                    */)
//                 ),
//               ),
//               PageView.builder(
//                 scrollDirection: Axis.horizontal,
//                 onPageChanged: _onPageChanged,
//                 itemCount: carouselItemList.length,
//                 itemBuilder: (ctx,i) => Screens(index: i,),
//               ),
//             ],
//           ),
//         ),
//       );
//   }
// }

// class Screens extends StatefulWidget {
//   final int index;
//   Screens({@required this.index
//   });

//   @override
//   _ScreensState createState() => _ScreensState();
// }

// class _ScreensState extends State<Screens> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 812,
//       width: 375,
//       child: Container(
//         margin: EdgeInsets.symmetric(horizontal: 24),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             SizedBox(
//                 height:483
//             ),
//             Container(
//               width: 44,
//               height: 28,
//               child: Center(
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Container(
//                       width:8,
//                       height: 8,
//                       decoration: BoxDecoration(
//                         color: Color(0xff3A953C),
//                         shape: BoxShape.circle,
//                       ),
//                     ),
//                     Container(
//                       width:8,
//                       height: 8,
//                       decoration: BoxDecoration(
//                         color: Color(0xffffffff),
//                         shape: BoxShape.circle,
//                       ),
//                     ),
//                     Container(
//                       width:8,
//                       height: 8,
//                       decoration: BoxDecoration(
//                         color: Color(0xffffffff),
//                         shape: BoxShape.circle,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             SizedBox(height: 9,),
//             Container(
//               width: 327,
//               child: Text(
//                 carouselItemList[widget.index].title,
//                 style: TextStyle(
//                   color: Color(0xffffffff),
//                   fontStyle: FontStyle.normal,
//                   fontWeight: FontWeight.bold,
//                   fontSize: 24,
//                 ),
//               ),
//             ),
//             SizedBox(height: 9,),
//             Container(
//               width: 327,
//               child: Text(
//                 carouselItemList[widget.index].description,
//                 style: TextStyle(
//                   color: Color(0xffffffff),
//                   fontStyle: FontStyle.normal,
//                   fontWeight: FontWeight.normal,
//                   // fontSize: 17,
//                 ),
//               ),
//             ),
//             SizedBox(height: 62,),
//             Center(
//               child: GestureDetector(
//                 child: Container(
//                   height: 47,
//                   width: 327,
//                   decoration: BoxDecoration(
//                       color: Color(0xff3A953C),
//                       borderRadius: BorderRadius.circular(5.0)
//                   ),
//                   child: Center(
//                     child: Text(
//                       'Get Started',
//                       style: TextStyle(
//                         fontSize: 19,
//                         fontWeight: FontWeight.bold,
//                         fontStyle: FontStyle.normal,
//                         color: Color(0xffffffff),
//                       ),
//                       textAlign: TextAlign.center,
//                     ),
//                   ),
//                 ),
//                 onTap: () {
//                   Navigator.push(context, MaterialPageRoute(builder: (context) => CreatePassPage()),);
//                 },
//               ),
//             ),
//             SizedBox(height: 16,),
//             Center(
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text(
//                     "Have an account already?",
//                     softWrap: true,
//                     style: TextStyle(
//                       color: Color(0xff999999),
//                       fontSize: 14,
//                     ),
//                   ),
//                   SizedBox(
//                     width: 5,
//                   ),
//                   GestureDetector(
//                     onTap: () {
//                      Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginPage()));
//                     },
//                     child: Text(
//                       "Sign In",
//                       softWrap: true,
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontWeight: FontWeight.bold,
//                         fontSize: 14,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }



// class CarouselItem{
//   final String bgImg;
//   final String title;
//   final String description;



//   CarouselItem({
//     @required this.bgImg,
//     @required this.title,
//     @required this.description,

//   });

// }
