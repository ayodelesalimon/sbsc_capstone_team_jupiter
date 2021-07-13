import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sbsc_capstone_team_jupiter/model/category/sub_category.dart';
import 'package:sbsc_capstone_team_jupiter/screen/cart.dart';
import 'package:sbsc_capstone_team_jupiter/screen/category/category_search.dart';
//import 'package:sbsc_capstone_team_jupiter/screen/category_search.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:sbsc_capstone_team_jupiter/widgets/colors.dart';

class ApiHelper {
  static String baseEndpoint = 'https://aduabaecommerceapi.azurewebsites.net';
//https://aduabaecommerceapi.azurewebsites.net/SubCategories/get-all-subcategories
  static Future<List<SubCategories>> getAllCategory() async {
    List<SubCategories> categoryItemList = [];
    String url = '$baseEndpoint/SubCategories/get-all-subcategories';

    http.Response _response = await http.get(Uri.parse(url));
    print(_response.body);

    List decodedResponse = jsonDecode(_response.body);
    categoryItemList =
        decodedResponse.map((json) => SubCategories.fromJson(json)).toList();
    return categoryItemList;
  }
}

// class ApiHelper {
//   static String baseEndpoint = 'https://aduabaecommerceapi.azurewebsites.net';
// //https://aduabaecommerceapi.azurewebsites.net/SubCategories/get-all-subcategories
//   static Future<List<CategoryItemList>> getAllCategory() async {
//     List<CategoryItemList> categoryItemList = [];
//     String url = '$baseEndpoint/SubCategories/get-all-subcategories';

//     http.Response _response = await http.get(Uri.parse(url));
//     print(_response.body);

//     List decodedResponse = jsonDecode(_response.body);
//     categoryItemList =
//         decodedResponse.map((json) => CategoryItemList.fromJson(json)).toList();
//     return categoryItemList;
//   }

// }

class CategoryPage extends StatefulWidget {
  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  var categoryList = [
    'Raw Fruits',
    'Raw Fruits',
    'Raw Fruits',
    'Raw Fruits',
    'Raw Fruits',
    'Raw Fruits',
    'Raw Fruits',
    'Raw Fruits',
  ];
  var imageList = [
    'assets/images/turkey.png',
    'assets/images/boxheadset.png',
    'assets/images/boxheadset.png',
    'assets/images/boxheadset.png',
    'assets/images/boxheadset.png',
    'assets/images/boxheadset.png',
    'assets/images/boxheadset.png',
  ];
  var quantityList = [
    '234 Items',
    '234 Items',
    '234 Items',
    '234 Items',
    '234 Items',
    '234 Items',
    '234 Items',
  ];
 bool _isLoading = false;
 
  List<SubCategories> categoryItemList = [];
  Future<List<SubCategories>> getAllCategory() async {
    categoryItemList = await ApiHelper.getAllCategory();
    setState(() {
      _isLoading = false;
    });

    return categoryItemList;
  }
// List<CategoryItemList> categoryItemList = [];
//   Future<List<CategoryItemList>> getAllCategory() async {
//     categoryItemList = await ApiHelper.getAllCategory();
//     setState(() {
//       _isLoading = false;
//     });

//     return categoryItemList;
//   }
  @override
  void initState() {
    super.initState();
    getAllCategory();
    setState(() {
      _isLoading = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        // child: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            width: 375,
            height: 812,
            color: Color(0xffffffff),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding:
                      EdgeInsets.only(bottom: 17, right: 24, left: 24, top: 40),
                  width: 375,
                  height: 154,
                  decoration: BoxDecoration(
                    color: Color(0xffffffff),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xffffffff).withOpacity(0.1),
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
                          color: Color(0xff424347),
                        ),
                      ),
                      Container(
                        width: 327,
                        height: 35,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Text(
                                'Categories',
                                style: TextStyle(
                                    color: Color(0xff819272),
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => CartPage()),
                                );
                              },
                              child: Container(
                                width: 35,
                                height: 35,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xff3A953C),
                                ),
                                child: Center(
                                  child: Image.asset(
                                    'assets/images/cartout.png',
                                    width: 16.13,
                                    height: 14.36,
                                    color: Color(0xffffffff),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 84,
                        child: Text(
                          '${categoryItemList.length} Categories',
                          style: TextStyle(
                            fontSize: 13,
                            color: Color(0xff999999),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 38),

                Center(
                  child: _isLoading ?
                   Container(
                              height: MediaQuery.of(context).size.height - 300,
                              child: Center(
                                  child: CircularProgressIndicator(
                                backgroundColor: Colors.yellowAccent,
                                valueColor:
                                    AlwaysStoppedAnimation<Color>(primaryColor),
                              ))) :
                  Container(
                    width: 327,
                    height: 536,
                    margin: EdgeInsets.symmetric(horizontal: 24),
                    child: ListView.separated(
                      itemCount: categoryItemList.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CategoryGridPage(
                                    itemCount:  categoryItemList[index].quantityOfSubCategoryProduct.toString(),
                                    productName: categoryItemList[index].subCategoryName,
                                        subCateId: categoryItemList[index]
                                            .subCategoryId,
                                      )),
                            );
                          },
                          child: Center(
                            child: Container(
                              width: 327,
                              height: 60,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Image.network(
                                    categoryItemList[index].subCategoryImage,
                                    width: 60,
                                    height: 60,
                                  ),
                                  SizedBox(
                                    width: 12,
                                  ),
                                  Center(
                                    child: Container(
                                      width: 224,
                                      height: 42,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            width: 224,
                                            child: Text(
                                              categoryItemList[index]
                                                  .subCategoryName,
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  color: Color(0xff000000),
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          Container(
                                              width: 58,
                                              child: Text(
                                                "${categoryItemList[index].quantityOfSubCategoryProduct.toString()} Items",
                                                style: TextStyle(
                                                    fontSize: 13,
                                                    color: Color(0xffbbbbbb),
                                                    fontWeight:
                                                        FontWeight.normal),
                                              )),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Spacer(),
                                  GestureDetector(
                                    onTap: () {},
                                    child: Center(
                                      child: Image.asset(
                                        'assets/images/forward.png',
                                        width: 9.41,
                                        height: 16,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.symmetric(vertical: 16),
                          child: Divider(
                            thickness: 1,
                            color: Color(0xfff5f5f5),
                          ),
                        );
                      },
                    ),
                  ),
                ),

                // Positioned(
                //   bottom: 0,
                //   child: Center(
                //     child:Container(
                //       decoration: BoxDecoration(
                //         color: Color(0xffffffff),
                //         boxShadow: [
                //           BoxShadow(color:Color.fromRGBO(0, -2, 20, 0.1),),
                //         ],
                //       ),
                //       width: 375,
                //       height:88,
                //       child: Center(
                //         child:Container(
                //           width: 181.1,
                //           height: 21.2,
                //           child: Row(
                //             children: [
                //               GestureDetector(onTap:(){
                //                 Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()),);
                //               },child: Image.asset('assets/images/home.png',width: 16.29,height: 15.41,color: Color(0xff3A953C),)),
                //               Spacer(),
                //               GestureDetector(onTap:(){
                //                 Navigator.push(context, MaterialPageRoute(builder: (context) => DiscoverSearchPage()),);
                //               },child: Image.asset('assets/images/search.png',width: 21.2,height: 21.2,color: Color(0xffDEDEDE),)),
                //               Spacer(),
                //               GestureDetector(onTap:(){
                //                 Navigator.push(context, MaterialPageRoute(builder: (context) => MyDrawer()),);
                //               },child: Image.asset('assets/images/dialog.png',width: 21.2,height: 21.2,color: Color(0xffDEDEDE),)),
                //             ],
                //           ),
                //         ),
                //       ),),),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
