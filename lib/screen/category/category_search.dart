import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:sbsc_capstone_team_jupiter/model/category/category_list.dart';
import 'package:sbsc_capstone_team_jupiter/screen/home.dart';
import 'package:sbsc_capstone_team_jupiter/screen/product_detail.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:sbsc_capstone_team_jupiter/widgets/colors.dart';
import 'category.dart';

class ApiHelper {
  static String baseEndpoint = 'https://aduabaecommerceapi.azurewebsites.net';
//https://aduabaecommerceapi.azurewebsites.net/SubCategories/get-all-subcategories
  static Future<List<CategoryItemList>> getAllCategory(
      String subCategoryId) async {
    List<CategoryItemList> categoryItemList = [];
    String url = '$baseEndpoint/Products/get-products-bysubcategoryid';
    Map<String, String> queryParams = {
      'subcategoryId': subCategoryId,
    };
    String queryString = Uri(queryParameters: queryParams).query;
    var requestUrl = url + '?' + queryString;
    print(requestUrl);
    http.Response _response = await http.get(Uri.parse(requestUrl));

    print(_response.body);
    print(_response.statusCode);

    List decodedResponse = jsonDecode(_response.body);
    print(decodedResponse);
    categoryItemList =
        decodedResponse.map((json) => CategoryItemList.fromJson(json)).toList();
    return categoryItemList;
  }
}

Color active = Colors.red;
Color inactive = Colors.white;

update(int status) {
  if (status == 1) {
    if (inactive == Colors.white) {
      inactive = Colors.red;
    } else {
      inactive = Colors.white;
    }
  }
}

class CategoryGridPage extends StatefulWidget {
  final String productName;
  final String itemCount;
  final String subCateId;
  final String name = "categoryPage";

  const CategoryGridPage(
      {Key key, this.subCateId, this.productName, this.itemCount})
      : super(key: key);
  @override
  _CategoryGridPageState createState() => _CategoryGridPageState();
}

class _CategoryGridPageState extends State<CategoryGridPage> {
  bool _isLoading = false;
  List<CategoryItemList> categoryItemList = [];
  Future<List<CategoryItemList>> getAllCategory() async {
    categoryItemList = await ApiHelper.getAllCategory(widget.subCateId);
    setState(() {
      _isLoading = false;
    });

    return categoryItemList;
  }

  @override
  void initState() {
    super.initState();
    getAllCategory().whenComplete(() => null);
    setState(() {
      _isLoading = true;
    });
  }

  List<CaregoryCard> CategotyCardList = [
    CaregoryCard(
        image: "assets/images/rice.png",
        name: "Emmanuel Produce",
        product: 'Herbsconnect Organic Acai Berry Powder Freeze Dried',
        availability: 'In stock',
        price: '???35,000.00'),
    CaregoryCard(
        image: "assets/images/coffee.png",
        name: "Emmanuel Produce",
        product: 'Herbsconnect Organic Acai Berry Powder Freeze Dried',
        availability: 'In stock',
        price: '???35,000.00'),
    CaregoryCard(
        image: "assets/images/sushi.png",
        name: "Emmanuel Produce",
        product: 'Herbsconnect Organic Acai Berry Powder Freeze Dried',
        availability: 'In stock',
        price: '???35,000.00'),
    CaregoryCard(
        image: "assets/images/seafood.png",
        name: "Emmanuel Produce",
        product: 'Herbsconnect Organic Acai Berry Powder Freeze Dried',
        availability: 'In stock',
        price: '???35,000.00'),
    CaregoryCard(
        image: "assets/images/tomatoes.png",
        name: "Emmanuel Produce",
        product: 'Herbsconnect Organic Acai Berry Powder Freeze Dried',
        availability: 'In stock',
        price: '???35,000.00'),
    CaregoryCard(
        image: "assets/images/.png",
        name: "Emmanuel Produce",
        product: 'Herbsconnect Organic Acai Berry Powder Freeze Dried',
        availability: 'In stock',
        price: '???35,000.00'),
  ];

  var _formKey = GlobalKey<FormState>();

  TextEditingController maxPrice = TextEditingController();
  TextEditingController minPrice = TextEditingController();

  bool showCheck = false;

  RangeValues values = RangeValues(1, 2000000);
  RangeLabels labels = RangeLabels('1', '2000000');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        // child: SingleChildScrollView(
        child: Stack(
          children: [
            SafeArea(
              child: Container(
                width: 375,
                height: 812,
                color: Color(0xffffffff),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.only(
                          bottom: 17, right: 24, left: 24, top: 10),
                      width: 375,
                      height: 162,
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
                                    widget.productName,
                                    style: TextStyle(
                                        color: Color(0xff819272),
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
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
                              ],
                            ),
                          ),
                          Container(
                            width: 327,
                            height: 24,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 81,
                                  child: Text(
                                    '${widget.itemCount}Items',
                                    style: TextStyle(
                                        color: Color(0xffbbbbbb), fontSize: 13),
                                  ),
                                ),
                                Container(
                                  width: 137.29,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      InkWell(
                                        splashColor: Colors.green,
                                        onTap: () {
                                          showDialog<String>(
                                            context: context,
                                            builder: (BuildContext context) =>
                                                AlertDialog(
                                              insetPadding: EdgeInsets.only(
                                                top: 359,
                                              ),
                                              content: Center(
                                                child: Container(
                                                  width: 327,
                                                  height: 628,
                                                  child: Column(
                                                    children: [
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Text(
                                                            'Sort by',
                                                            style: TextStyle(
                                                                color: Color(
                                                                    0xff3C673D),
                                                                fontSize: 24,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                          ),
                                                          Image.asset(
                                                              'assets/images/x.png',
                                                              width: 12,
                                                              height: 12),
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        height: 34,
                                                      ),
                                                      SortTab(
                                                          title: 'Popularity'),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .symmetric(
                                                                vertical: 16),
                                                        child: Divider(
                                                          thickness: 1,
                                                          color:
                                                              Color(0xfff5f5f5),
                                                        ),
                                                      ),
                                                      SortTab(
                                                          title:
                                                              'New Arrivals'),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .symmetric(
                                                                vertical: 16),
                                                        child: Divider(
                                                          thickness: 1,
                                                          color:
                                                              Color(0xfff5f5f5),
                                                        ),
                                                      ),
                                                      SortTab(
                                                          title:
                                                              'Lowest to Highest'),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .symmetric(
                                                                vertical: 16),
                                                        child: Divider(
                                                          thickness: 1,
                                                          color:
                                                              Color(0xfff5f5f5),
                                                        ),
                                                      ),
                                                      SortTab(
                                                          title:
                                                              'Highest to Lowest'),
                                                      SizedBox(
                                                        height: 16,
                                                      ),
                                                      Divider(
                                                        thickness: 1,
                                                        color:
                                                            Color(0xfff5f5f5),
                                                      ),
                                                      SizedBox(
                                                        height: 82,
                                                      ),
                                                      GestureDetector(
                                                        onTap: () {
                                                          Navigator.push(
                                                            context,
                                                            MaterialPageRoute(
                                                                builder:
                                                                    (context) =>
                                                                        HomeScreen()),
                                                          );
                                                        },
                                                        child: Container(
                                                          width: 327,
                                                          height: 47,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Color(
                                                                0xff3A953C),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        5),
                                                          ),
                                                          child: Center(
                                                            child: Text(
                                                              'Apply Filter',
                                                              style: TextStyle(
                                                                fontSize: 16,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                color: Color(
                                                                    0xffffffff),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                        child: Container(
                                          width: 50.24,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Image.asset(
                                                'assets/images/sort.png',
                                                width: 9.24,
                                                height: 12,
                                                color: Color(0xff979797),
                                              ),
                                              Text(
                                                'Sort',
                                                style: TextStyle(
                                                    color: Color(0xff3e3e3e),
                                                    fontSize: 13),
                                              ),
                                              Image.asset(
                                                'assets/images/bottom.png',
                                                width: 8,
                                                height: 4.5,
                                                color: Color(0xffdedede),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Image.asset(
                                        'assets/images/stroke.png',
                                        width: 1,
                                        height: 24,
                                        color: Color(0xfff1f1f1),
                                      ),
                                      Container(
                                        width: 47.06,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            InkWell(
                                              onTap: () {
                                                showDialog<String>(
                                                  context: context,
                                                  builder:
                                                      (BuildContext context) =>
                                                          AlertDialog(
                                                    insetPadding:
                                                        EdgeInsets.only(
                                                      top: 200,
                                                    ),
                                                    content: Center(
                                                      child:
                                                          SingleChildScrollView(
                                                        child: Container(
                                                          width: 327,
                                                          height: 500,
                                                          child: ListView(
                                                            children: [
                                                              Container(
                                                                width: 327,
                                                                height: 29,
                                                                child: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    Text(
                                                                      'Filter',
                                                                      style:
                                                                          TextStyle(
                                                                        fontSize:
                                                                            24,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                        color: Color(
                                                                            0xff3C673D),
                                                                      ),
                                                                    ),
                                                                    GestureDetector(
                                                                      onTap:
                                                                          () {
                                                                        Navigator.pop(
                                                                            context);
                                                                      },
                                                                      child: Image
                                                                          .asset(
                                                                        'assets/images/x.png',
                                                                        width:
                                                                            12,
                                                                        height:
                                                                            12,
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              SizedBox(
                                                                height: 32,
                                                              ),
                                                              Container(
                                                                width: 327,
                                                                height: 47,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: Color(
                                                                      0xfff7f7f7),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              10),
                                                                ),
                                                                child: Center(
                                                                  child:
                                                                      TextField(
                                                                    keyboardType:
                                                                        TextInputType
                                                                            .text,
                                                                    decoration:
                                                                        InputDecoration(
                                                                      border: InputBorder
                                                                          .none,
                                                                      prefixIcon:
                                                                          Image
                                                                              .asset(
                                                                        'assets/images/search.png',
                                                                        width:
                                                                            16,
                                                                        height:
                                                                            16,
                                                                        color: Color(
                                                                            0xffbababa),
                                                                      ),
                                                                      hintText:
                                                                          'Search vendor',
                                                                      hintStyle:
                                                                          TextStyle(
                                                                        color: Color(
                                                                            0xffbababa),
                                                                        fontSize:
                                                                            15,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              SizedBox(
                                                                  height: 24),
                                                              Container(
                                                                width: 92,
                                                                height: 20,
                                                                child: Text(
                                                                  'Sub category',
                                                                  style:
                                                                      TextStyle(
                                                                    fontSize:
                                                                        15,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    color: Color(
                                                                        0xff10151a),
                                                                  ),
                                                                ),
                                                              ),
                                                              SizedBox(
                                                                  height: 16),
                                                              Container(
                                                                width: 327,
                                                                height: 152,
                                                                child: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  children: [
                                                                    Container(
                                                                      width:
                                                                          155.5,
                                                                      height:
                                                                          152,
                                                                      child:
                                                                          Column(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        children: [
                                                                          Container(
                                                                            width:
                                                                                155.5,
                                                                            height:
                                                                                26,
                                                                            child: Center(child: FilterTab(title: 'Granular Fruits')
                                                                                // Row(
                                                                                //   children: [
                                                                                //     Container(
                                                                                //       width: 18,
                                                                                //       height: 18,
                                                                                //       decoration: BoxDecoration(
                                                                                //         border: Border.all(
                                                                                //           color: Color(0xff000000),
                                                                                //         ),
                                                                                //         color: Colors.transparent,
                                                                                //       ),
                                                                                //     ),
                                                                                //     SizedBox(
                                                                                //       width: 10,
                                                                                //     ),
                                                                                //     Text(
                                                                                //       'Granular Fruits',
                                                                                //       style: TextStyle(
                                                                                //         color: Color(0xff10151a),
                                                                                //         fontSize: 17,
                                                                                //       ),
                                                                                //     ),
                                                                                //   ],
                                                                                // ),
                                                                                ),
                                                                          ),
                                                                          Container(
                                                                            width:
                                                                                155.5,
                                                                            height:
                                                                                26,
                                                                            child:
                                                                                Center(
                                                                              child: FilterTab(title: 'Meat & Fish'),
                                                                            ),
                                                                          ),
                                                                          Container(
                                                                            width:
                                                                                155.5,
                                                                            height:
                                                                                26,
                                                                            child:
                                                                                Center(
                                                                              child: FilterTab(title: 'Organic Food'),
                                                                            ),
                                                                          ),
                                                                          Container(
                                                                            width:
                                                                                155.5,
                                                                            height:
                                                                                26,
                                                                            child:
                                                                                Center(
                                                                              child: FilterTab(title: 'Low Cabs'),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                    Container(
                                                                      width:
                                                                          155.5,
                                                                      height:
                                                                          152,
                                                                      child:
                                                                          Column(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        children: [
                                                                          Container(
                                                                            width:
                                                                                155.5,
                                                                            height:
                                                                                26,
                                                                            child:
                                                                                Center(
                                                                              child: FilterTab(title: 'Granular Fruits'),
                                                                            ),
                                                                          ),
                                                                          Container(
                                                                            width:
                                                                                155.5,
                                                                            height:
                                                                                26,
                                                                            child:
                                                                                Center(
                                                                              child: FilterTab(title: 'Meat & Fish'),
                                                                            ),
                                                                          ),
                                                                          Container(
                                                                            width:
                                                                                155.5,
                                                                            height:
                                                                                26,
                                                                            child:
                                                                                Center(
                                                                              child: FilterTab(title: 'Organic Food'),
                                                                            ),
                                                                          ),
                                                                          Container(
                                                                            width:
                                                                                155.5,
                                                                            height:
                                                                                26,
                                                                            child:
                                                                                Center(
                                                                              child: FilterTab(title: 'Low Cabs'),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              SizedBox(
                                                                  height: 24),
                                                              Text(
                                                                'Price Range',
                                                                style:
                                                                    TextStyle(
                                                                  color: Color(
                                                                      0xff10151a),
                                                                  fontSize: 15,
                                                                ),
                                                              ),
                                                              SizedBox(
                                                                  height: 16),
                                                              Container(
                                                                height: 16,
                                                                width: 327,
                                                                child:
                                                                    RangeSlider(
                                                                  min: 1,
                                                                  max: 2000000,
                                                                  values:
                                                                      values,
                                                                  labels:
                                                                      labels,
                                                                  onChanged:
                                                                      (value) {
                                                                    setState(
                                                                        () {
                                                                      values =
                                                                          value;
                                                                      labels =
                                                                          RangeLabels(
                                                                        value
                                                                            .start
                                                                            .toInt()
                                                                            .toString(),
                                                                        value
                                                                            .end
                                                                            .toInt()
                                                                            .toString(),
                                                                      );
                                                                    });
                                                                  },
                                                                  activeColor:
                                                                      Color(
                                                                          0xff3A953C),
                                                                  inactiveColor:
                                                                      Color(
                                                                          0xffffffff),
                                                                ),
                                                              ),
                                                              SizedBox(
                                                                  height: 16),
                                                              Form(
                                                                key: _formKey,
                                                                child:
                                                                    Container(
                                                                  height: 47,
                                                                  width: 327,
                                                                  child: Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceBetween,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Container(
                                                                        height:
                                                                            47,
                                                                        width:
                                                                            152,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              Color(0xfff7f7f7),
                                                                          borderRadius:
                                                                              BorderRadius.circular(5.0),
                                                                        ),
                                                                        child:
                                                                            Center(
                                                                          child:
                                                                              TextFormField(
                                                                            controller:
                                                                                minPrice,
                                                                            onChanged: (value) =>
                                                                                minPrice = value as TextEditingController,
                                                                            textAlign:
                                                                                TextAlign.start,
                                                                            keyboardType:
                                                                                TextInputType.number,
                                                                            style:
                                                                                TextStyle(
                                                                              color: Color(0xffbababa),
                                                                              fontStyle: FontStyle.normal,
                                                                              fontWeight: FontWeight.normal,
                                                                              fontSize: 15,
                                                                            ),
                                                                            decoration:
                                                                                InputDecoration(
                                                                              hintText: '??? 0',
                                                                              hintStyle: TextStyle(
                                                                                fontStyle: FontStyle.normal,
                                                                                fontWeight: FontWeight.normal,
                                                                                fontSize: 15,
                                                                                color: Color(0xffbababa),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Image
                                                                          .asset(
                                                                        'assets/images/minus.png',
                                                                        width:
                                                                            8,
                                                                        color: Color(
                                                                            0xff999999),
                                                                      ),
                                                                      Expanded(
                                                                        child:
                                                                            Container(
                                                                          height:
                                                                              47,
                                                                          width:
                                                                              152,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                Color(0xfff7f7f7),
                                                                            borderRadius:
                                                                                BorderRadius.circular(5.0),
                                                                          ),
                                                                          child:
                                                                              Center(
                                                                            child:
                                                                                TextFormField(
                                                                              controller: minPrice,
                                                                              onChanged: (value) => maxPrice = value as TextEditingController,
                                                                              textAlign: TextAlign.start,
                                                                              keyboardType: TextInputType.number,
                                                                              style: TextStyle(
                                                                                color: Color(0xffbababa),
                                                                                fontStyle: FontStyle.normal,
                                                                                fontWeight: FontWeight.normal,
                                                                                fontSize: 15,
                                                                              ),
                                                                              decoration: InputDecoration(
                                                                                hintText: '??? 2,000,000',
                                                                                hintStyle: TextStyle(
                                                                                  fontStyle: FontStyle.normal,
                                                                                  fontWeight: FontWeight.normal,
                                                                                  fontSize: 15,
                                                                                  color: Color(0xffbababa),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                              SizedBox(
                                                                  height: 16),
                                                              GestureDetector(
                                                                onTap: () {
                                                                  Navigator
                                                                      .push(
                                                                    context,
                                                                    MaterialPageRoute(
                                                                        builder:
                                                                            (context) =>
                                                                                HomeScreen()),
                                                                  );
                                                                },
                                                                child:
                                                                    Container(
                                                                  width: 327,
                                                                  height: 47,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: Color(
                                                                        0xff3A953C),
                                                                    borderRadius:
                                                                        BorderRadius
                                                                            .circular(5),
                                                                  ),
                                                                  child: Center(
                                                                    child: Text(
                                                                      'Apply Filter',
                                                                      style:
                                                                          TextStyle(
                                                                        fontSize:
                                                                            16,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                        color: Color(
                                                                            0xffffffff),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              },
                                              child: Image.asset(
                                                'assets/images/filter.png',
                                                width: 12.06,
                                                height: 12,
                                                color: Color(0xff999999),
                                              ),
                                            ),
                                            Text(
                                              'Filter',
                                              style: TextStyle(
                                                  color: Color(0xff3e3e3e),
                                                  fontSize: 13),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 32),
                    Expanded(
                      child: _isLoading
                          ? Container(
                              height: MediaQuery.of(context).size.height - 300,
                              child: Center(
                                  child: CircularProgressIndicator(
                                backgroundColor: Colors.yellowAccent,
                                valueColor:
                                    AlwaysStoppedAnimation<Color>(primaryColor),
                              )))
                          : Container(
                              margin: EdgeInsets.symmetric(horizontal: 24),

                              child: GridView.builder(
                                itemCount: categoryItemList.length,
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  crossAxisSpacing: 16,
                                  mainAxisSpacing: 24,
                                  childAspectRatio: 0.602,
                                ),
                                itemBuilder: (BuildContext context, int index) {
                                  return Column(
                                    children: [
                                      Expanded(
                                        child: Container(
                                          margin: EdgeInsets.only(right: 16),
                                          height: 259,
                                          width: 156,
                                          child: ListView(
                                            children: [
                                              Stack(
                                                children: [
                                                  GestureDetector(
                                                    onTap: () {
                                                      Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                            builder: (context) => ProductDetails(
                                                              description: categoryItemList[
                                                                        index]
                                                                    .description,
                                                                image:categoryItemList[
                                                                        index]
                                                                    .imageUrl,
                                                                name: categoryItemList[
                                                                        index]
                                                                    .supplierName,
                                                                product: categoryItemList[
                                                                        index].productName
                                                                    ,
                                                                price: categoryItemList[
                                                                        index]
                                                                    .price.toString())),
                                                      );
                                                    },
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        image: DecorationImage(
                                                            image: NetworkImage(
                                                                categoryItemList[
                                                                        index]
                                                                    .imageUrl),
                                                            fit: BoxFit.cover),
                                                        borderRadius:
                                                            BorderRadius.all(
                                                                Radius.circular(
                                                                    4.0)),
                                                      ),
                                                      height: 156,
                                                      width: 156,
                                                    ),
                                                  ),
                                                  Positioned(
                                                    top: 10.25,
                                                    right: 10.5,
                                                    child: GestureDetector(
                                                        onTap: () {
                                                          setState(() {
                                                            update(1);
                                                          });
                                                        },
                                                        child: Image.asset(
                                                          'assets/images/heart.png',
                                                          color: inactive,
                                                          width: 15.01,
                                                          height: 13.24,
                                                        )),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 8,
                                              ),
                                              Text(
                                                categoryItemList[index]
                                                    .supplierName,
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w300,
                                                    fontSize: 10,
                                                    color: Color(0xff819272)),
                                              ),
                                              SizedBox(
                                                height: 4,
                                              ),
                                              Text(
                                                categoryItemList[index]
                                                    .productName,
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 16,
                                                    color: Color(0xff000000)),
                                              ),
                                              SizedBox(
                                                height: 8,
                                              ),
                                              Container(
                                                width: 156,
                                                height: 20,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      "N???${categoryItemList[index].price.toString()}",
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 13,
                                                        color:
                                                            Color(0xffF39E28),
                                                      ),
                                                    ),
                                                    Text(
                                                      ".",
                                                      style: TextStyle(
                                                          fontSize: 14,
                                                          color: Color(
                                                              0xffD8D8D8)),
                                                    ),
                                                    Text(
                                                      categoryItemList[index].status
                                                          ,
                                                      style: TextStyle(
                                                          fontSize: 13,
                                                          color: Color(
                                                              0xff3A953C)),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  );

                                  // Image.network(
                                  //     categoryItemList[index].imageUrl);
                                },
                              ),
                              // child: GridView(
                              //   shrinkWrap: true,
                              //   scrollDirection: Axis.vertical,
                              //   children:[
                              // CaregoryCard(image:"assets/images/rice.png",name: "Emmanuel Produce",product: 'Herbsconnect Organic Acai Berry Powder Freeze Dried',availability: 'In stock',price: '???35,000.00'),
                              //     CaregoryCard(image:"assets/images/sushi.png",name: "Emmanuel Produce",product: 'Herbsconnect Organic Acai Berry Powder Freeze Dried',availability: 'In stock',price: '???35,000.00'),
                              //     CaregoryCard(image:"assets/images/tomatoes.png",name: "Emmanuel Produce",product: 'Herbsconnect Organic Acai Berry Powder Freeze Dried',availability: 'In stock',price: '???35,000.00'),
                              //     CaregoryCard(image:"assets/images/seafood.png",name: "Emmanuel Produce",product: 'Herbsconnect Organic Acai Berry Powder Freeze Dried',availability: 'In stock',price: '???35,000.00'),
                              //     CaregoryCard(image:"assets/images/coffee.png",name: "Emmanuel Produce",product: 'Herbsconnect Organic Acai Berry Powder Freeze Dried',availability: 'In stock',price: '???35,000.00'),
                              //     CaregoryCard(image:"assets/images/turkey.png",name: "Emmanuel Produce",product: 'Herbsconnect Organic Acai Berry Powder Freeze Dried',availability: 'In stock',price: '???35,000.00'),
                              //     CaregoryCard(image:"assets/images/rice.png",name: "Emmanuel Produce",product: 'Herbsconnect Organic Acai Berry Powder Freeze Dried',availability: 'In stock',price: '???35,000.00'),

                              //   ],
                              //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              //     crossAxisCount: 2,
                              //     crossAxisSpacing: 16,
                              //     mainAxisSpacing: 24,
                              //     childAspectRatio: 0.602,
                              //   ),
                              // ),
                            ),
                    ),
                    // Expanded(
                    //   child: Center(
                    //     child: Container(
                    //       decoration: BoxDecoration(
                    //         color: Color(0xffffffff),
                    //         boxShadow: [
                    //           BoxShadow(
                    //             color: Color.fromRGBO(0, -2, 20, 0.1),
                    //           ),
                    //         ],
                    //       ),
                    //       width: 375,
                    //       height: 88,
                    //       child: Center(
                    //         child: Container(
                    //           width: 181.1,
                    //           height: 21.2,
                    //           child: Row(
                    //             children: [
                    //               GestureDetector(
                    //                   onTap: () {},
                    //                   child: Image.asset(
                    //                     'assets/images/home.png',
                    //                     width: 16.29,
                    //                     height: 15.41,
                    //                     color: Color(0xff3A953C),
                    //                   )),
                    //               Spacer(),
                    //               GestureDetector(
                    //                   onTap: () {},
                    //                   child: Image.asset(
                    //                     'assets/images/search.png',
                    //                     width: 21.2,
                    //                     height: 21.2,
                    //                     color: Color(0xffDEDEDE),
                    //                   )),
                    //               Spacer(),
                    //               GestureDetector(
                    //                   onTap: () {},
                    //                   child: Image.asset(
                    //                     'assets/images/dialog.png',
                    //                     width: 21.2,
                    //                     height: 21.2,
                    //                     color: Color(0xffDEDEDE),
                    //                   )),
                    //             ],
                    //           ),
                    //         ),
                    //       ),
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CaregoryCard extends StatefulWidget {
  CaregoryCard({
    @required this.image,
    @required this.name,
    @required this.product,
    @required this.availability,
    @required this.price,
  });

  final String image, name, price, product, availability;

  @override
  _CaregoryCardState createState() => _CaregoryCardState();
}

class _CaregoryCardState extends State<CaregoryCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            margin: EdgeInsets.only(right: 16),
            height: 259,
            width: 156,
            child: ListView(
              children: [
                Stack(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProductDetails(
                                  image: widget.image,
                                  name: widget.name,
                                  product: widget.product,
                                  price: widget.price)),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(widget.image),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.all(Radius.circular(4.0)),
                        ),
                        height: 156,
                        width: 156,
                      ),
                    ),
                    Positioned(
                      top: 10.25,
                      right: 10.5,
                      child: GestureDetector(
                          onTap: () {
                            setState(() {
                              update(1);
                            });
                          },
                          child: Image.asset(
                            'assets/images/heart.png',
                            color: inactive,
                            width: 15.01,
                            height: 13.24,
                          )),
                    ),
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  widget.name,
                  style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 10,
                      color: Color(0xff819272)),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  widget.product,
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Color(0xff000000)),
                ),
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
                      Text(
                        widget.price,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                          color: Color(0xffF39E28),
                        ),
                      ),
                      Text(
                        ".",
                        style:
                            TextStyle(fontSize: 14, color: Color(0xffD8D8D8)),
                      ),
                      Text(
                        widget.availability,
                        style:
                            TextStyle(fontSize: 13, color: Color(0xff3A953C)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

showProdDetails(
  context,
  image,
  price,
  vendor,
  product,
) {
  return showDialog(
    context: context,
    builder: (context) {
      return Scaffold(
        body: SingleChildScrollView(
          child: Container(
            width: 375,
            height: 812,
            color: Color(0xffffffff),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      width: 375,
                      height: 374,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(image),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Positioned(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Image.asset(
                          'assets/images/back.png',
                          color: Color(0xffffffff),
                          width: 23,
                          height: 14,
                        ),
                      ),
                      top: 40,
                      left: 24,
                    ),
                  ],
                ),
                SizedBox(
                  height: 24,
                ),
                Center(
                  child: Container(
                    width: 326,
                    height: 120,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 249,
                          height: 120,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                product,
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff000000),
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                vendor,
                                style: TextStyle(
                                  fontSize: 17,
                                  color: Color(0xff819272),
                                ),
                              )
                            ],
                          ),
                        ),
                        Spacer(),
                        Image.asset('assets/images/heart.png',
                            width: 20.01, height: 17.65),
                      ],
                    ),
                  ),
                ),
                // Positioned(child:Image.asset('assets/images/heart.png',width: 20.01,height:17.65),top: 401,right: 27,),
                // child:Text(product,style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Color(0xff000000),),),
                SizedBox(
                  height: 24,
                ),
                Center(
                  child: Container(
                    width: 327,
                    child: Text(
                      'Lal Qilla Diabetes and Obesity Basmati Rice 5kg. Using a unique technique during cultivation and processing, Lal Qilla has introduced a specially processed low G.I. parboiled rice. This remarkable rice helps rice lovers with diabetes to',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                        color: Color(0xff10151a),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                Container(
                  margin: EdgeInsets.only(left: 24),
                  width: 113,
                  height: 16,
                  child: Row(
                    children: [
                      Text(
                        'MORE DETAILS',
                        style: TextStyle(
                          fontSize: 13,
                          color: Color(0xff494846),
                        ),
                      ),
                      Spacer(),
                      Image.asset('assets/images/plus.png',
                          width: 10, height: 10),
                    ],
                  ),
                ),
                SizedBox(
                  height: 45,
                ),
                Center(
                  child: Container(
                    height: 47,
                    width: 327,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          price,
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff000000),
                          ),
                        ),
                        Spacer(),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            width: 164,
                            height: 47,
                            decoration: BoxDecoration(
                              color: Color(0xff3A953C),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Center(
                              child: Text(
                                'Add to Cart',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 33),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}

Color toggleColor = Colors.transparent;
FontWeight toggleFont = FontWeight.normal;

toggle(int status) {
  if (status == 1) {
    if (toggleColor == Colors.transparent) {
      toggleColor = Colors.green;
      toggleFont = FontWeight.bold;
    } else {
      toggleColor = Colors.transparent;
      toggleFont = FontWeight.normal;
    }
  }
}

class SortTab extends StatefulWidget {
  final String title;

  SortTab({@required this.title});
  @override
  _SortTabState createState() => _SortTabState();
}

class _SortTabState extends State<SortTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onLongPress: () {
              // Navigator.push(context,MaterialPageRoute(builder: (context)=> DiscoverGridPage()),);
            },
            child: GestureDetector(
              onTap: () {
                setState(() {
                  toggle(1);
                });
              },
              child: Text(
                widget.title,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 17,
                  fontWeight: toggleFont,
                ),
              ),
            ),
          ),
          Image.asset(
            'assets/images/mark.png',
            width: 12,
            height: 12,
            color: toggleColor,
          ),
        ],
      ),
    );
  }
}

Color selectColor = Colors.transparent;
FontWeight selectFont = FontWeight.normal;

select(int status) {
  if (status == 1) {
    if (selectColor == Colors.transparent) {
      selectColor = Colors.green;
      selectFont = FontWeight.bold;
    } else {
      selectColor = Colors.transparent;
      selectFont = FontWeight.normal;
    }
  }
}

class FilterTab extends StatefulWidget {
  final String title;
  FilterTab({@required this.title});
  @override
  _FilterTabState createState() => _FilterTabState();
}

class _FilterTabState extends State<FilterTab> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              select(1);
            });
          },
          child: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
              ),
              color: selectColor,
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          widget.title,
          style: TextStyle(
            color: Color(0xff10151a),
            fontSize: 17,
            fontWeight: selectFont,
          ),
        ),
      ],
    );
  }
}
