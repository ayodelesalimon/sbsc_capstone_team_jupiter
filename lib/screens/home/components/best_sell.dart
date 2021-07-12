

import 'package:flutter/material.dart';
import 'package:sbsc_capstone_team_jupiter/util/constants.dart';
import 'package:sbsc_capstone_team_jupiter/widgets/colors.dart';

class BestSellSection extends StatelessWidget {
  BestSellSection();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        scrollDirection: Axis.horizontal,
          children: [
            BestSellCard("assets/food.png", "Emmanuel Produce"),
            BestSellCard("assets/drugs.png", "Emmanuel Produce"),
            BestSellCard("assets/drugs.png", "Emmanuel Produce"),
          ],
      ),
    );
  }
}

class BestSellCard extends StatelessWidget {
  const BestSellCard(this.image, this.name);

  final String image, name;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 259,width: 156,
      decoration: BoxDecoration(
        color: Color(0xffe5e5e5),
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
