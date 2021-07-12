
import 'package:flutter/material.dart';

class NotExistingPage extends StatefulWidget {
  @override
  _NotExistingPageState createState() => _NotExistingPageState();
}

class _NotExistingPageState extends State<NotExistingPage> {

  var productList =[
    'Herbsconnect Organic Acai Berry Powder Freeze Dried',
    'Herbsconnect Organic Acai Berry Powder Freeze Dried',
    'Herbsconnect Organic Acai Berry Powder Freeze Dried',

  ];
  var vendorList =[
    'Emmanuel produce',
    'Emmanuel produce',
    'Emmanuel produce',

  ];
  var imageList =[
    'assets/images/item1.png',
    'assets/images/item2.png',
    'assets/images/item3.png',

  ];
  var priceList =[
    'N35,000.00',
    'N35,000.00',
    'N35,000.00',

  ];
  var stockList =[
    'In stock',
    'In stock',
    'In stock',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(

            width: 375,
            height: 812,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width:375,
                  height:179,
                  padding: EdgeInsets.only(bottom: 17,right: 24,left: 24,top: 40),
                  child: Container(
                    child:Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          child: Container(
                            width: 23,
                            height: 14,
                            child: Image.asset('assets/images/back.png'),
                          ),
                          onTap: (){
                            Navigator.pop(context);
                          },
                        ),
                        SizedBox(height:16),
                        Container(
                          width:140,
                          height:29,
                          child: Text('Search', style: TextStyle(color: Color(0xff819272),fontSize: 24, fontWeight: FontWeight.bold),),
                        ),
                        SizedBox(height:16),
                        Container(
                          width: 327,
                          height: 47,
                          decoration: BoxDecoration(
                            color: Color(0xfff7f7f7),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(
                            child: TextField(
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                prefixIcon: Image.asset('assets/images/search.png', width:16,height:16, color: Color(0xffbababa),),
                                hintText: 'Search product',
                                hintStyle: TextStyle(color: Color(0xffbababa),fontSize: 15,),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xffffffff),
                    boxShadow:[
                      BoxShadow(
                        color:Color(0xffffffff).withOpacity(0.1),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 31,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 24),
                  child:Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('No Search Result',style: TextStyle(
                        fontSize: 17, fontWeight: FontWeight.bold, 
                        color: Color(0xff10151A),
                      ),
                      ),
                      SizedBox(height:4),
                      Text('We currently dont have what you’re looking for. Why not try out similar products',style: TextStyle(
                        fontSize: 13, fontWeight: FontWeight.normal,
                        color: Color(0xff10151A),
                      ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 32,
                ),

                Container(
                  margin: EdgeInsets.symmetric(horizontal: 24),
                  width: 327, height: 386,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Related Searches',style: TextStyle(color: Color(0xff10151a),fontSize: 17,fontWeight:FontWeight.bold),),
                      SizedBox(
                        height: 24,
                      ),
                      Container(
                        width: 327,
                        height: 342,
                        child: ListView.separated(
                          itemCount: imageList.length,

                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: (){
                                // showProdDetails(imageList[index],priceList[index],vendorList[index],productList[index],stockList[index]);
                              },
                              child:Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 82,
                                        width: 75,
                                        child:Image.asset(imageList[index]),
                                      ),
                                    ],
                                  ),
                                  Spacer(),
                                  Container(
                                    width: 224,
                                    height: 82,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(productList[index],style: TextStyle(color: Color(0xff10151A),fontSize: 15,
                                        ),),
                                        Spacer(),
                                        Text(vendorList[index],style: TextStyle(color: Color(0xffbbbbbb),fontSize: 13,
                                        ),),
                                        Spacer(),
                                        Container(
                                          width: 156,
                                          child: Row(
                                            children: [
                                              Text(priceList[index],style: TextStyle(color: Color(0xffF39E28),fontSize: 13,
                                                fontWeight: FontWeight.bold,
                                              ),),
                                              Spacer(),
                                              Text('.'),
                                              Spacer(),
                                              Text(stockList[index],style: TextStyle(color: Color(0xff3A953C),fontSize: 15,
                                              ),),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                          separatorBuilder: (context, index){
                            return Padding(
                              padding:EdgeInsets.symmetric(vertical:24),
                              child: Divider(
                                thickness: 1,
                                color: Color(0xfff5f5f5),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 120,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
