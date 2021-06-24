import 'package:flutter/material.dart';
import 'package:sbsc_capstone_team_jupiter/widgets/colors.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {"text": "Raw Food", "textColor": primaryColor, "cardColor": liteGreen},
      {"text": "Spices", "textColor": darkRed, "cardColor": lightRed},
      {"text": "Bakery", "textColor": primaryColor, "cardColor": liteGreen},
      {"text": "Cosmetic", "textColor": yellow, "cardColor": orange},
      {"text": "More", "textColor": darkLiver, "cardColor": cadetBlue},
    ];
    return 
    
    Container(
      //margin: const EdgeInsets.only(left: 10),
      height: 100,
     // margin: EdgeInsets.symmetric(vertical: 10.0),
      child: 
      
      Padding(
        padding: const EdgeInsets.only(left: 8.0, right: 24),
        child: ListView(scrollDirection: Axis.horizontal, children: [
          Padding(
            padding: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(
                categories.length,
                (index) => CategoryCard(
                  textColor: categories[index]["textColor"],
                  cardColor: categories[index]["cardColor"],
                  text: categories[index]["text"],
                  press: () {},
                ),
              ),
            ),
          ),
        ]),
      ),
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
      child: SizedBox(
        width: 120,
        child: Column(
          children: [
            Container(
                padding: EdgeInsets.all(15),
                height: 50,
                width: 100,
                decoration: BoxDecoration(
                  color: cardColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(text, textAlign: TextAlign.center, style: TextStyle(color: textColor, fontWeight: FontWeight.w700),)),
            SizedBox(width: 5),
          
          ],
        ),
      ),
    );
  }
}
