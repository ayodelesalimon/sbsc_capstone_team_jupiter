import 'package:flutter/material.dart';
import 'package:sbsc_capstone_team_jupiter/widgets/colors.dart';

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
    return
        Container(
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
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
        ),
    );
  }
}