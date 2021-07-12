import 'package:flutter/material.dart';
import 'package:sbsc_capstone_team_jupiter/widgets/colors.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {"text": "Raw Food", "textColor": Color(0xff3A953C), "cardColor": Color(0xff3A953C).withOpacity(0.1)},
      {"text": "Spices", "textColor":  Color(0xffffBB2F48), "cardColor": Color(0xffBB2F48).withOpacity(0.1)},
      {"text": "Bakery", "textColor":  Color(0xff3A953C), "cardColor": Color(0xff3A953C).withOpacity(0.1)},
      {"text": "Cosmetic", "textColor":  Color(0xffffBB2F48), "cardColor": Color(0xffBB2F48).withOpacity(0.1)},
      {"text": "More", "textColor":  Color(0xff3A953C), "cardColor": Color(0xff3A953C).withOpacity(0.1)},
    ];
    return 
    
    Container(
      //margin: const EdgeInsets.only(left: 10),
      height: 92,
     // margin: EdgeInsets.symmetric(vertical: 10.0),
      child: 
      
      ListView(scrollDirection: Axis.horizontal, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: List.generate(
            categories.length,
            (index) => Padding(
              padding: EdgeInsets.only(right: 8),
              child: CategoryCard(
                textColor: categories[index]["textColor"],
                cardColor: categories[index]["cardColor"],
                text: categories[index]["text"],
                press: () {},
              ),
            ),
          ),),
      ],),
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key key,
    @required this.text,
    @required this.press, @required this.textColor, this.cardColor,
  }) : super(key: key);

  final String text;
  final Color textColor;
  final Color cardColor;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Row(
        children: [
          Container(
              height: 50,
              width: 92,
              decoration: BoxDecoration(
                color: cardColor,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(text, textAlign: TextAlign.center, style: TextStyle(color: textColor, fontWeight: FontWeight.bold,fontSize: 13),),),
          SizedBox(width:8),
        ],
      ),
    );
  }
}
