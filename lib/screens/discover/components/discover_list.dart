import 'package:flutter/material.dart';
import 'package:sbsc_capstone_team_jupiter/widgets/colors.dart';

class DiscoverList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {"text": "All"},  {"text": "Raw Fruits"},  {"text": "Spices"},  {"text": "Cosmetics"},  {"text": "Fruits"},
    
    ];
    return Container(
      //margin: const EdgeInsets.only(left: 10),
      height: 70,
      // margin: EdgeInsets.symmetric(vertical: 10.0),
      child: Padding(
        padding: const EdgeInsets.only(left: 24.0, right: 14.0),
        child: ListView(scrollDirection: Axis.horizontal, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
      ),
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
      child: Padding(
        padding: const EdgeInsets.only(right: 18.0),
        child: Text(
          text,
          textAlign: TextAlign.left,
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.normal, fontSize: 18),
        ),
      ),
    );
  }
}
