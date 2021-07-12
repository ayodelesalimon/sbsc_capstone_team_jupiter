import 'package:flutter/material.dart';
import 'package:sbsc_capstone_team_jupiter/util/constants.dart';
import 'package:sbsc_capstone_team_jupiter/widgets/colors.dart';

class BestSellSection extends StatelessWidget {
  BestSellSection();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24.0, right: 24.0),
      child: Container(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              BestSellCard("assets/food.png", "Emmanuel Produe"),
              BestSellCard("assets/drugs.png", "Ayodele Salimonu"),
            ],
          ),
        ),
      ),
    );
  }
}

class BestSellCard extends StatelessWidget {
  const BestSellCard(this.image, this.name);

  final String image, name;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
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
          width: 200,
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0, right: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.favorite,
                  color: Colors.red,
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Container(
          height: 200,
          width: 200,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
             padding: const EdgeInsets.only(right: 0.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                   mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                Text(
                  name,
                  style: TextStyle(fontWeight: FontWeight.w300, fontSize: 14),
                ),
                 SizedBox(
          height: 8,
        ),
      Text("Herbsconnect Organic \nAcai Berry Powder Freeze \nDried",style: TextStyle(fontWeight: FontWeight.w800, fontSize: 15),),
                  spacer5,
                   Container(
                     child: Row(
                      //  crossAxisAlignment: CrossAxisAlignment.center,
                      //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                       children: [
                         Text("N34,000.00",style: TextStyle(fontWeight: FontWeight.w800, fontSize: 15, color: yellow),),
                         SizedBox(width: 5,),
                         Text(".",style: TextStyle(fontWeight: FontWeight.w800, fontSize: 14, color: darkGrey),),
                                       SizedBox(width: 5,),
                         Text("In Stock",style: TextStyle(fontWeight: FontWeight.w800, fontSize: 15, color: primaryColor),),
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
    );
  }
}
