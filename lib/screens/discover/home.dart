import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:sbsc_capstone_team_jupiter/screens/discover/components/discover_list.dart';
import 'package:sbsc_capstone_team_jupiter/screens/home/components/menudrawer.dart';
import 'package:sbsc_capstone_team_jupiter/widgets/colors.dart';
import 'package:sbsc_capstone_team_jupiter/screens/home/home.dart';
import 'package:sbsc_capstone_team_jupiter/screens/account/profile.dart';

import '../../constants.dart';

class DiscoverPage extends StatefulWidget {
  const DiscoverPage({Key key}) : super(key: key);

  @override
  _DiscoverPageState createState() => _DiscoverPageState();
}

class _DiscoverPageState extends State<DiscoverPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

   List<String> images = [
    "assets/seafood.png",
    "assets/images/item3.png",
    "assets/images/turkeybg.png",
    "assets/images/sushi.png",
  ];

  List<String> names = [
    "Emmanuel Produce",
    "Emmanuel Produce",
    "Emmanuel Produce",
    "Emmanuel Produce",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawerEnableOpenDragGesture: false,
      key: _scaffoldKey,
      drawer: MyDrawer(),
      extendBody: true,
      body: SingleChildScrollView(
        child: Stack(
          children: [
          SafeArea(
            child: Container(
              height: 812,width: 375,
              child: ListView(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 24,top: 40,bottom: 17),
                    decoration: BoxDecoration(
                      color: Color(0xffffffff),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white.withOpacity(0.1),
                          spreadRadius: 2,
                        ),
                      ],
                    ),
                    height: 142,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 35,width: 327,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButton(
                                onPressed: () {
                                  _scaffoldKey.currentState.openDrawer();
                                },
                                icon: Image.asset("assets/menu.png", width: 22,height: 22,),
                              ),
                              SizedBox(width:32),
                              Container(
                                width:140,
                                child: Text(
                                  "Discover",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 24,color: Color(0xff819272)),
                                ),
                              ),
                              SizedBox(
                                width: 51.91,
                              ),
                              Image.asset('assets/images/search.png',width: 16,height: 16,color: Color(0xffbababa),),
                              SizedBox(
                                width: 29,
                              ),
                              Container(
                                width: 35,height: 35,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                      color: Color(0xff3A953C),
                                ),
                                  child: Image.asset('assets/images/shop.png',width: 16.13,height: 14.36,),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 24),
                            child: DiscoverList()),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Container(
                    width:327 ,
                    margin: EdgeInsets.symmetric(horizontal: 24),
                    child: StaggeredGridView.countBuilder(
                      scrollDirection: Axis.vertical,
                      crossAxisCount: 2,
                      itemCount: images.length,
                      itemBuilder: (BuildContext context, int index) =>
                          SingleChildScrollView(
                            child: Container(
                                height: 259,width: 156,
                                decoration: BoxDecoration(
                                  // color: Color.fromRGBO(104, 117, 130, 0.05),
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(right: 16),
                                      decoration: BoxDecoration(
                                        image: DecorationImage(image: AssetImage(images[index]), fit: BoxFit.cover),
                                        borderRadius: BorderRadius.all(Radius.circular(4.0)),
                                      ),
                                      height: 156,
                                      width: 156,
                                      child: Padding(
                                        padding: const EdgeInsets.only(top: 10.25, right: 10.5),
                                        child:Image.asset('assets/images/heart.png',color: Color(0xffffffff),width: 15.01,height: 13.24,),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          names[index], style: TextStyle(fontWeight: FontWeight.w300, fontSize: 10,color: Color(0xff819272)),
                                        ),
                                        SizedBox(
                                          height: 4,
                                        ),
                                        Text("Herbsconnect Organic \nAcai Berry Powder Freeze \nDried",style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16,color: Color(0xff000000)),),
                                        SizedBox(
                                          height: 8,
                                        ),
                                        Container(
                                          width: 156,
                                          height: 20,
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Text("₦35,000.00",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13, color: Color(0xffF39E28),),),
                                              Text(".",style: TextStyle( fontSize: 14, color: Color(0xffD8D8D8)),),
                                              Text("In stock",style: TextStyle(fontSize: 13, color: Color(0xff3A953C)),),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                      ),
                      staggeredTileBuilder: (int index) => new StaggeredTile.fit(2),
                      mainAxisSpacing:24.0,
                      crossAxisSpacing: 16.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
            Positioned(
              bottom: 0,
              child: Center(
                child:Container(
                  decoration: BoxDecoration(
                    color: Color(0xffffffff),
                    boxShadow: [
                      BoxShadow(color:Color.fromRGBO(0, -2, 20, 0.1),),
                    ],
                  ),
                  width: 375,
                  height:88,
                  child: Center(
                    child:Container(
                      width: 181.1,
                      height: 21.2,
                      child: Row(
                        children: [
                          GestureDetector(onTap:(){},child: Image.asset('assets/images/home.png',width: 16.29,height: 15.41,color: Color(0xffDEDEDE),)),
                          Spacer(),
                          GestureDetector(onTap:(){},child: Image.asset('assets/images/search.png',width: 21.2,height: 21.2,color: Color(0xff3A953C),)),
                          Spacer(),
                          GestureDetector(onTap:(){},child: Image.asset('assets/images/dialog.png',width: 21.2,height: 21.2,color: Color(0xffDEDEDE),)),
                        ],
                      ),
                    ),
                  ),),),),
        ],),
      ),
    );
  }
}

