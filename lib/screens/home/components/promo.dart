import 'package:flutter/material.dart';
import 'package:sbsc_capstone_team_jupiter/widgets/colors.dart';

class Promo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {"text": "Raw Food", "textColor": primaryColor, "cardColor": liteGreen},
      {"text": "Spices", "textColor": darkRed, "cardColor": lightRed},
      {"text": "Bakery", "textColor": primaryColor, "cardColor": liteGreen},
      {"text": "Cosmetic", "textColor": yellow, "cardColor": orange},
      {"text": "More", "textColor": darkLiver, "cardColor": cadetBlue},
    ];
    return Container(
      margin: EdgeInsets.only(right: 16),
      height: 181,
      child: ListView(scrollDirection: Axis.horizontal, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: List.generate(
            categories.length,
            (index) => Padding(
              padding: const EdgeInsets.only(right: 16),
              child: PromoCard(
                textColor: categories[index]["textColor"],
                cardColor: categories[index]["cardColor"],
                text: categories[index]["text"],
                press: () {},
              ),
            ),

          ),
        ),
      ]),
    );
  }
}

class PromoCard extends StatelessWidget {
  const PromoCard({
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
      child: Column(
        children: [
          SizedBox(width: 10,),
          Container(
              padding: EdgeInsets.all(2),
              height: 200,
              width: 300,
              decoration: BoxDecoration(
                color: cardColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(text, textAlign: TextAlign.center, style: TextStyle(color: textColor, fontWeight: FontWeight.w700),)),
          SizedBox(width: 15),
        
        ],
      ),
    );
  }
}
