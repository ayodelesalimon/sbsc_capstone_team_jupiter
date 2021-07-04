import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sbsc_capstone_team_jupiter/widgets/colors.dart';

class DiscoverList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {"text": "All"},  {"text": "Raw Fruits"},  {"text": "Spices"},  {"text": "Cosmetics"},  {"text": "Fruits & Vegetable"},
    
    ];
    return Container(
      height: 70,
      child: ListView(scrollDirection: Axis.horizontal, children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: List.generate(
            categories.length,
            (index) => DiscoverCard(
              text: categories[index]["text"],
              press: () {},
            ),
          ),
        ),
      ]),
    );
  }
}

class DiscoverCard extends StatelessWidget {
  const DiscoverCard({Key key, @required this.text, @required this.press})
      : super(key: key);

  final String text;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.only(right: 16),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(color: Color(0xff999999), fontWeight: FontWeight.normal, fontSize: 15),
        ),
      ),
    );
  }
}
