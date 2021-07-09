import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//import 'package:sbsc_capstone_team_jupiter/category/categories_grid.dart';
// import 'package:sbsc_capstone_team_jupiter/screens/cart/cart.dart';
// import 'package:sbsc_capstone_team_jupiter/screens/category/categories_grid.dart';
// import 'package:sbsc_capstone_team_jupiter/widgets/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
// import 'package:sbsc_capstone_team_jupiter/screens/account/profile.dart';
// import 'package:sbsc_capstone_team_jupiter/screens/discover/home.dart';
import 'package:sbsc_capstone_team_jupiter/menu_drawer.dart';
import 'package:sbsc_capstone_team_jupiter/cart.dart';
import 'package:sbsc_capstone_team_jupiter/category.dart';
import 'package:sbsc_capstone_team_jupiter/discover_search.dart';
import 'package:sbsc_capstone_team_jupiter/discovery_detail.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class HomeCategories{
  String? categoryName;
  String? categoryId;
  HomeCategories({required this.categoryId, this.categoryName});
  factory HomeCategories.fromJson(Map<String, dynamic> json) {
    return HomeCategories(
      categoryId: json['categoryId'],
      categoryName: json['categoryName'],
    );
  }
}

class HomeCategoriesListApiHelper {
  static String baseEndpoint = 'http://aduabaecommerceapi.azurewebsites.net';
  static Future<List<HomeCategories>> getAllCategories() async {
    List<HomeCategories> homeCategoriesModelList = [];
    String url = '$baseEndpoint/Categories/get-all-categories';

    http.Response _response = await http.get(Uri.parse(url));
    print(_response.body);
    List decodedResponse = jsonDecode(_response.body);
    homeCategoriesModelList =
        decodedResponse.map((json) => HomeCategories.fromJson(json)).toList();
    return homeCategoriesModelList;
  }
  //
  // static Future deleteCategory() async {
  //   String url = '$baseEndpoint/Categories/remove-categories';
  //   http.Response _response = await http.delete(
  //     Uri.parse(url),
  //     body: jsonEncode([
  //       'spices'
  //     ]),
  //   );
  //   print(_response.body);
  // }
}


class HomeScreen extends StatefulWidget {

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  bool _isLoading = true;
  List<HomeCategories> homeCategoriesModelList = [];
  Future<List<HomeCategories>> getAllCategories() async {
    homeCategoriesModelList = await HomeCategoriesListApiHelper.getAllCategories();
    setState(() {
      _isLoading = false;
    });

    return homeCategoriesModelList;
  }

  @override
  void initState() {
    super.initState();
    getAllCategories();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   leading: Builder(
        //     builder: (BuildContext context) {
        //       return Padding(
        //         padding: const EdgeInsets.only(left: 24),
        //         child: IconButton(
        //           icon:  Image.asset('assets/menu.png',width: 22,height: 22,),
        //           onPressed: () { Scaffold.of(context).openDrawer(); },
        //           tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
        //         ),
        //       );
        //     },
        //   ),
        //   title: Text(
        //     "Aduaba Fresh",
        //     style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Color(0xff000000),),
        //   ),
        //   centerTitle: true,
        //   actions: [
        //     Padding(
        //       padding: const EdgeInsets.only(right:24),
        //       child: Container(
        //         height: 30,width: 30,
        //         decoration: BoxDecoration(
        //           shape: BoxShape.circle,
        //           color:Color(0xff3A953C),
        //         ),
        //         child: IconButton(
        //           onPressed: () {
        //             Navigator.push(context, MaterialPageRoute(builder: (context) =>CartPage()),);
        //           },
        //           icon: Image.asset('assets/images/shop.png',width: 16.13,height:14.36),),
        //       ),
        //     ),
        //   ],
        //   backgroundColor: Colors.white,
        // ),
        // endDrawerEnableOpenDragGesture: false,
        // key: _scaffoldKey,
        drawer: MyDrawer(),
        body: SingleChildScrollView(
            child: Stack(
              children: [
                 Container(
              width: 375,
              height: 1400,
                      child: SafeArea(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:  EdgeInsets.only(top:40),
                              child: Container(
                                height:35, width:327,
                                margin: EdgeInsets.symmetric(horizontal: 24),
                               child: Row(
                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                 crossAxisAlignment: CrossAxisAlignment.center ,
                                 children: [
                                   GestureDetector(onTap:(){
                                     Navigator.push(context,MaterialPageRoute(builder: (context)=> MyDrawer()),);
                                   },
                                       child: Image.asset('assets/menu.png',width: 22,height: 22,)),
                                   Text(
                                     "Aduaba Fresh",
                                     style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Color(0xff000000),),
                                   ),
                                   GestureDetector(
                                     onTap:(){
                                       Navigator.push(context,MaterialPageRoute(builder: (context)=> CartPage()),);
                                     },
                                     child: Container(
                                       width: 35,height: 35,
                                       decoration: BoxDecoration(
                                         shape: BoxShape.circle,
                                         color: Color(0xff3A953C),
                                       ),
                                       child: Image.asset('assets/images/shop.png',width: 16.13,height: 14.36,),
                                     ),
                                   ),
                                 ],
                               ),
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
                            GestureDetector(
                              onLongPress:(){
                                Navigator.push(context,MaterialPageRoute(builder: (context)=> DiscoverSearchPage()),);
                              },
                              child: Container(
                                margin: EdgeInsets.symmetric(horizontal: 24),
                                width: 327,
                                height: 47,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Color(0xfff7f7f7),
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    fillColor: Color(0xfff7f7f7),
                                    hintText: "Search product",
                                    hintStyle: TextStyle(
                                      fontSize: 15, color: Color(0xffbababa),
                                    ),
                                    prefixIcon:
                                       Padding(
                                        padding: const EdgeInsets.only(left: 16,right: 13),
                                        child: Image.asset('assets/images/search.png', width: 16,height: 16,color: Color(0xffBABABA),),
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
                                        Navigator.push(context, MaterialPageRoute(builder: (context) => CategoryPage()),);
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
                              height:50,width:492,
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
                                        // Navigator.of(context).push(
                                        //   MaterialPageRoute(
                                        //     settings: RouteSettings(name: "/categoryPage"),
                                        //     builder: (context) => CategoryGridPage(),
                                        //   ),
                                        // );
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
                               width:500, height:181,
                                margin: EdgeInsets.only(left: 24),
                                child: PromoSection(),
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
                                    Container(
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
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 10,),
                            Container(
                              height:259, width:500,
                                margin: EdgeInsets.only(left: 24),
                                child: BestSellSection(),
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
                                        // Navigator.of(context).push(
                                        //   MaterialPageRoute(
                                        //     settings: RouteSettings(name: "/categoryPage"),
                                        //     builder: (context) => CategoryGridPage(),
                                        //   ),
                                        // );
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
                              height:259, width:500,
                                margin: EdgeInsets.only(left: 24),
                                child: FeaturedProductsSection(),
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
                              GestureDetector(onTap:(){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()),);
                              },child: Image.asset('assets/images/home.png',width: 16.29,height: 15.41,color: Color(0xff3A953C),)),
                              Spacer(),
                              GestureDetector(onTap:(){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => DiscoverSearchPage()),);
                              },child: Image.asset('assets/images/search.png',width: 21.2,height: 21.2,color: Color(0xffDEDEDE),)),
                              Spacer(),
                              GestureDetector(onTap:(){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => MyDrawer()),);
                              },child: Image.asset('assets/images/dialog.png',width: 21.2,height: 21.2,color: Color(0xffDEDEDE),)),
                            ],
                          ),
                        ),
                      ),),),),
              ],
            ),
          ),
        ),
    );
  }
}


class FeaturedProductsSection extends StatefulWidget {
  FeaturedProductsSection();

  @override
  _FeaturedProductsSectionState createState() => _FeaturedProductsSectionState();
}

class _FeaturedProductsSectionState extends State<FeaturedProductsSection> {
  @override
  Widget build(BuildContext context) {
    return Container( height: 259,width: 156,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          FeaturedProductsCard(image:"assets/food.png",name: "Emmanuel Produce",product: 'Herbsconnect Organic Acai Berry Powder Freeze Dried',availability: 'In stock',price: '₦35,000.00'),
          FeaturedProductsCard(image:"assets/drugs.png",name: "Emmanuel Produce",product: 'Herbsconnect Organic Acai Berry Powder Freeze Dried',availability: 'In stock',price: '₦35,000.00'),
          FeaturedProductsCard(image:"assets/images/tomatoes.png",name: "Emmanuel Produce",product: 'Herbsconnect Organic Acai Berry Powder Freeze Dried',availability: 'In stock',price: '₦35,000.00'),
        ],
      ),
    );
  }
}



class FeaturedProductsCard extends StatefulWidget {
  const FeaturedProductsCard({required this.image,required this.name,required this.product,required this.availability,required this.price,});

  final String image, name,price,product,availability;

  @override
  _FeaturedProductsCardState createState() => _FeaturedProductsCardState();
}

class _FeaturedProductsCardState extends State<FeaturedProductsCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:(){
        showProdDetails(
          context,
          widget.image,
          widget.price,
          widget.name,
          widget.product,
        );
      },
      child: Container(
        margin: EdgeInsets.only(right: 16),
        height: 259,width: 156,
        decoration: BoxDecoration(
          color: Color.fromRGBO(104, 117, 130, 0.05),
        ),
        child: ListView(
          children: [
            Stack(
              children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(widget.image), fit: BoxFit.cover),
                  borderRadius: BorderRadius.all(Radius.circular(4.0)),
                ),
                height: 156,
                width: 156,
              ),
                Positioned(
                 top: 10.25, right: 10.5,
                  child:Image.asset('assets/images/heart.png',color: Color(0xffffffff),width: 15.01,height: 13.24,),
                ),
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  widget.name, style: TextStyle(fontWeight: FontWeight.w300, fontSize: 10,color: Color(0xff819272)),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(widget.product,style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16,color: Color(0xff000000)),),
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
                      Text(widget.price,style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13, color: Color(0xffF39E28),),),
                      Text(".",style: TextStyle( fontSize: 14, color: Color(0xffD8D8D8)),),
                      Text(widget.availability,style: TextStyle(fontSize: 13, color: Color(0xff3A953C)),),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class BestSellSection extends StatefulWidget {
  BestSellSection();

  @override
  _BestSellSectionState createState() => _BestSellSectionState();
}

class _BestSellSectionState extends State<BestSellSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 259,width: 156,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          BestSellCard(image:"assets/images/coffee.png",name: "Emmanuel Produce",product: 'Herbsconnect Organic Acai Berry Powder Freeze Dried',availability: 'In stock',price: '₦35,000.00'),
          BestSellCard(image:"assets/images/rice.png",name: "Emmanuel Produce",product: 'Herbsconnect Organic Acai Berry Powder Freeze Dried',availability: 'In stock',price: '₦35,000.00'),
          BestSellCard(image:"assets/drugs.png",name: "Emmanuel Produce",product: 'Herbsconnect Organic Acai Berry Powder Freeze Dried',availability: 'In stock',price: '₦35,000.00'),
        ],
      ),
    );
  }
}

class BestSellCard extends StatefulWidget {
  BestSellCard({required this.image,required this.name,required this.product,required this.availability,required this.price,});

  final String image, name,price,product,availability;

  @override
  _BestSellCardState createState() => _BestSellCardState();
}

class _BestSellCardState extends State<BestSellCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        showProdDetails(
            context,
            widget.image,
            widget.price,
            widget.name,
            widget.product,
        );
      },
      child: Container(
        height: 259,width: 156,
        margin: EdgeInsets.only(right: 16),
        decoration: BoxDecoration(
          color: Color(0xffe5e5e5),
        ),
        child: ListView(
          children: [
            Stack(
              children: [
                Container(
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(widget.image), fit: BoxFit.cover),
                  borderRadius: BorderRadius.all(Radius.circular(4.0)),
                ),
                height: 156,
                width: 156,
              ),
                Positioned(
                top: 10.25, right: 10.5,
                  child:Image.asset('assets/images/heart.png',color: Color(0xffffffff),width: 15.01,height: 13.24,),
                ),
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  widget.name, style: TextStyle(fontWeight: FontWeight.w300, fontSize: 10,color: Color(0xff819272)),
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
    );
  }
}


class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  bool _isLoading = true;
  List<HomeCategories> homeCategoriesModelList = [];

  Future<List<HomeCategories>> getAllCategories() async {
    homeCategoriesModelList =
    await HomeCategoriesListApiHelper.getAllCategories();
    setState(() {
      _isLoading = false;
    });

    return homeCategoriesModelList;
  }

  @override
  void initState() {
    super.initState();
    getAllCategories();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemCount: homeCategoriesModelList.length,
      itemBuilder: (context, index) {
        return Padding(padding: EdgeInsets.only(right: 8),
          child: CategoryCard(
              text: homeCategoriesModelList[index].categoryName!, textColor: Color(0xff3A953C),cardColor: Color(0xff3A953C).withOpacity(0.1),),
        );
      },
      separatorBuilder:(context, index) {
        return Padding(padding: EdgeInsets.only(right: 8),
          child: CategoryCard(
              text: homeCategoriesModelList[index].categoryName!,textColor: Color(0xffffBB2F48), cardColor: Color(0xffBB2F48).withOpacity(0.1)),
        );
      },
    );
  }
}

class CategoryCard extends StatelessWidget {
 CategoryCard({required this.text, required this.textColor,required this.cardColor,
}) ;

final String text;
final Color textColor;
final Color cardColor;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:(){},
      child: Row(
        children: [
          Container(
            height: 50,
            width: 92,
            decoration: BoxDecoration(
              color: cardColor,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Center(child: Text(text, textAlign: TextAlign.center, style: TextStyle(color: textColor, fontWeight: FontWeight.bold,fontSize: 13),)),),
          SizedBox(width:8),
        ],
      ),
    );
  }
}


class PromoSection extends StatelessWidget {

  PromoSection();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          PromoCard(),
          PromoCard(),
          PromoCard(),
        ],
      ),
    );
  }
}

class PromoCard extends StatelessWidget {
  const PromoCard();
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: Color(0xff7f7f7),
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(104, 117, 130, 0.05),
              blurRadius: 4,
            ),
          ],
        ),
        margin: EdgeInsets.only(right: 16),
        height: 181,
        width: 305,
        child:
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 139,
              height: 131,
              margin: EdgeInsets.only(left: 18,top: 18),
              child: ListView(
                children: [
                  Text("Organic Brands", style: TextStyle(color:Color(0xff3A953C), fontWeight: FontWeight.bold, fontSize: 12)),
                  Container(width: 109.35,
                      child: Text("exclusive", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 28,color:Color(0xff10151a),))),
                  Container(width: 109.35,
                      child: Text("brands", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 28,color:Color(0xff10151a),))),
                  SizedBox(height: 8,),
                  Text("Visit our shop for a complete list of our exclusive and premium food brand. ", style: TextStyle(fontWeight: FontWeight.w200, fontSize: 10,color:Color(0xff999999),),),
                  SizedBox(height: 9.5,),
                  Container(
                    width: 74,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Shop now", style: TextStyle(color: Color(0xff8AB543), fontWeight: FontWeight.bold, fontSize: 12),),
                        IconButton(onPressed: (){}, icon: Image.asset('assets/images/shortarrow.png',width: 3.75,height: 7.5,),),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 18),
              child: Image.asset("assets/fruit.png", height: 145, width: 127,),
            ),
          ],
        ),);
  }
}


