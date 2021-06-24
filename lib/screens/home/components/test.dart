import 'package:flutter/material.dart';
import 'package:sbsc_capstone_team_jupiter/widgets/colors.dart';

class PromoSection extends StatelessWidget {

  PromoSection();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24.0, right: 24.0),
      child: Container(
       
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
           children: [
                PromoCard(),
                PromoCard(),
                // PromoCard(flavorColor: Colors.blueAccent, flavor: 'Blueberry'),
                // PromoCard(flavorColor: Colors.amberAccent, flavor: 'Lemon'),
                // PromoCard(flavorColor: Colors.greenAccent, flavor: 'Mint'),
              ],
          ),
        ),
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
          border: Border.all(color: Color(0xffeeeeee), width: 2.0),
          color: Colors.white38,
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
          boxShadow: [
            BoxShadow(
              color: Colors.white10,
              blurRadius: 4,
              spreadRadius: 2,
              offset: Offset(0, 2),
            ),
          ],
        ),
        margin: EdgeInsets.all(8),
        height: 200,
        width: 300,
        child: 
        
     
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 24.0, top: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Organic Brands", style: TextStyle(color: primaryColor, fontWeight: FontWeight.w700, fontSize: 12)),
                  SizedBox(height: 5,),
                  Text("exclusive", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 28)),
                  SizedBox(height: 5,),
                  Text("brands", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 28)),
                  SizedBox(height: 5,),
                  Text("Visit our shop for a complete ", style: TextStyle(fontWeight: FontWeight.w200, fontSize: 11),),
                  SizedBox(height: 5,),
                  Text("list of our  products", style: TextStyle(fontWeight: FontWeight.w200, fontSize: 11), ),
                  SizedBox(height: 8,),
                   Row(
                     children: [
                       Text("Shop Now", style: TextStyle(color: primaryColor, fontWeight: FontWeight.w700, fontSize: 12)),
                       SizedBox(width: 8,),
                       Icon(Icons.arrow_forward_ios, color: primaryColor, size: 15,)
                     ],
                   ),

                ],
              ),
            ),
 Image.asset("assets/fruit.png"
          ),
        
           
          ],
        ),
    
    );
  }
}