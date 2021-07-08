import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//import 'package:sbsc_capstone_team_jupiter/category/categories_grid.dart';
import 'package:sbsc_capstone_team_jupiter/screens/cart/cart.dart';
import 'package:sbsc_capstone_team_jupiter/screens/category/categories_grid.dart';
import 'package:sbsc_capstone_team_jupiter/widgets/colors.dart';
import 'components/best_sell.dart';
import 'components/category.dart';
import 'components/menudrawer.dart';
import 'components/promo.dart';
import 'components/test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sbsc_capstone_team_jupiter/screens/account/profile.dart';
import 'package:sbsc_capstone_team_jupiter/screens/discover/home.dart';
import 'package:sbsc_capstone_team_jupiter/widgets/colors.dart';

class HomesCreen extends StatefulWidget {
  const HomesCreen({Key key}) : super(key: key);

  @override
  _HomesCreenState createState() => _HomesCreenState();
}

class _HomesCreenState extends State<HomesCreen> {
final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

@override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawerEnableOpenDragGesture: false,
      key: _scaffoldKey,
      drawer: MyDrawer(),
      body: SingleChildScrollView(
       child: Stack(
         children: [
         SafeArea(
            child: Container(
              child: ListView(
                children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 24),
                  width: 327,
                  height: 35,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {
                         _scaffoldKey.currentState.openDrawer();
                        },
                        icon: Image.asset("assets/menu.png", width: 22,height: 22,),
                      ),
                      Text(
                        "Aduaba Fresh",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Color(0xff000000),),
                      ),
                      GestureDetector(
                        onTap: (){
                           Navigator.of(context).push(
                                      MaterialPageRoute(
                                        settings: RouteSettings(name: "/cartPage"),
                                        builder: (context) => CartPage(),
                                      ),
                                    );
                        },
                        child: Container(
                          width: 35,
                            height: 35,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xff3A953C),
                            ),
                            child: Center(child: Image.asset('assets/images/shop.png',width: 16.13,height:14.36),),),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 32,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 24),
                  child: Text(
                    "Hi, Andrea",
                    style: TextStyle(fontWeight: FontWeight.normal, fontSize: 17,color: Color(0xff3A683B)),
                  ),
                ),
                SizedBox(height: 9),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 24),
                  child: Text(
                    "What are you looking for \n today?",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xff819272),
                        fontSize: 24),
                  ),
                ),
                SizedBox(height: 24),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 24),
                  width: 327,
                  height: 47,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      fillColor: Color(0xfff7f7f7),
                      hintText: "Search product",
                      hintStyle: TextStyle(
                        fontSize: 15, color: Color(0xffbababa),
                      ),
                      prefixIcon: Center(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 16,right: 13),
                          child: Image.asset('assets/images/search.png', width: 16,height: 16,),
                        ),
                      ),
                     ),
                  ),
                ),
                SizedBox(
                  height: 32,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 24),
                  height: 20,width: 327,
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Categories",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17, color: Color(0xff3C673D),),
                        ),
                        GestureDetector(
                          onTap: (){
                             Navigator.of(context).push(
                                        MaterialPageRoute(
                                          settings: RouteSettings(name: "/categoryPage"),
                                          builder: (context) => CategoryGridPage(),
                                        ),
                                      );
                          },
                          child: Container(
                            width: 58,height: 16,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text("View all", style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13, color: Color(0xff999999),),),
                                Image.asset('assets/images/arrow.png',width: 5.88,height: 10,),
                            ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                  SizedBox(
                    height: 16,
                  ),
                Container(
                    margin: EdgeInsets.only(left: 24),
                    child: Categories(),
                ),
                SizedBox(
                  height: 32,
                ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 24),
                    height: 20,width: 327,
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Today’s Promo ",
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17, color: Color(0xff3C673D),),
                          ),
                          GestureDetector(
                            onTap: (){
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  settings: RouteSettings(name: "/categoryPage"),
                                  builder: (context) => CategoryGridPage(),
                                ),
                              );
                            },
                            child: Container(
                              width: 58,height: 16,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text("View all", style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13, color: Color(0xff999999),),),
                                  Image.asset('assets/images/arrow.png',width: 5.88,height: 10,),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                SizedBox(height: 16,),

                Container(
                  margin: EdgeInsets.only(left: 24),
                    child: PromoSection()
                ),
                SizedBox(height: 32,),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 24),
                    height: 20,width: 327,
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Best Selling",
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17, color: Color(0xff3C673D),),
                          ),
                          GestureDetector(
                            onTap: (){
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  settings: RouteSettings(name: "/categoryPage"),
                                  builder: (context) => CategoryGridPage(),
                                ),
                              );
                            },
                            child: Container(
                              width: 58,height: 16,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text("View all", style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13, color: Color(0xff999999),),),
                                  Image.asset('assets/images/arrow.png',width: 5.88,height: 10,color: Color(0xff999999),),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                SizedBox(height: 10,),
                Container(
                  margin: EdgeInsets.only(left: 24),
                    child: BestSellSection()
                ),
                  SizedBox(height: 36,),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 24),
                    height: 20,width: 327,
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Featured Products",
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17, color: Color(0xff3C673D),),
                          ),
                          GestureDetector(
                            onTap: (){
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  settings: RouteSettings(name: "/categoryPage"),
                                  builder: (context) => CategoryGridPage(),
                                ),
                              );
                            },
                            child: Container(
                              width: 58,height: 16,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text("View all", style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13, color: Color(0xff000000),),),
                                  Image.asset('assets/images/arrow.png',width: 5.88,height: 10,color: Color(0xff000000),),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height:16),
                  Container(
                      margin: EdgeInsets.only(left: 24),
                      child: FeaturedProductsSection()
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
                            GestureDetector(onTap:(){},child: Image.asset('assets/images/home.png',width: 16.29,height: 15.41,color: Color(0xff3A953C),)),
                              Spacer(),
                                GestureDetector(onTap:(){},child: Image.asset('assets/images/search.png',width: 21.2,height: 21.2,color: Color(0xffDEDEDE),)),
                               Spacer(),
                               GestureDetector(onTap:(){},child: Image.asset('assets/images/dialog.png',width: 21.2,height: 21.2,color: Color(0xffDEDEDE),)),
                        ],
                  ),
                  ),
                           ),),),),
         ],
       ),
      ),
    );
  }
}


class FeaturedProductsSection extends StatelessWidget {
  FeaturedProductsSection();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          FeaturedProductsCard("assets/images/coffee.png", "Emmanuel Produce"),
          FeaturedProductsCard("assets/images/strawberry.png", "Emmanuel Produce"),
          FeaturedProductsCard("assets/drugs.png", "Emmanuel Produce"),
        ],
      ),
    );
  }
}



class FeaturedProductsCard extends StatelessWidget {
  const FeaturedProductsCard(this.image, this.name);

  final String image, name;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 259,width: 156,
      decoration: BoxDecoration(
        color: Color.fromRGBO(104, 117, 130, 0.05),
      ),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(right: 16),
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
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
                name, style: TextStyle(fontWeight: FontWeight.w300, fontSize: 10,color: Color(0xff819272)),
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
    );
  }
}
