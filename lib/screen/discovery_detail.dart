import 'package:flutter/material.dart';
import 'cart.dart';



showProdDetails(
    context,
    image,
    price,
    vendor,
    product,
    ) {
  bool selected = true;
  return showDialog(
    context:  context,
    builder: (context){
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
                        onTap: (){
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
                              SizedBox(height: 8,),
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
                            width: 20.01, height: 17.65,
                          color: selected? Colors.red:Colors.grey,
                        ),
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
                SizedBox(height: 24,),
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
                      Image.asset('assets/images/plus.png', width: 10, height: 10),
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
                          onTap:(){
                            Navigator.push(context,MaterialPageRoute(builder: (context)=> CartPage()),);
                          },
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
                              ),),
                          ),
                        ),
                        SizedBox(height:33),
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