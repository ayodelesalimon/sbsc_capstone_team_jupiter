import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:sbsc_capstone_team_jupiter/model/payment/card_model.dart';


import '../../util/constants.dart';
import 'card.dart';
import 'confirm_payment.dart';

class CardCarousel extends StatefulWidget {
  @override
  _CardCarouselState createState() => _CardCarouselState();
}

class _CardCarouselState extends State<CardCarousel> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        // SizedBox(height: 15.0),
        CarouselSlider(
          options: CarouselOptions(
            height: 180.0,
            enlargeCenterPage: true,
            // autoPlay: true,
            // aspectRatio: 16 / 9,
            // autoPlayCurve: Curves.fastOutSlowIn,
            enableInfiniteScroll: true,
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            viewportFraction: 0.8,
            onPageChanged: (index, reason) {
              setState(
                () {
                  _currentIndex = index;
                },
              );
            },
          ),
          items: cards.asMap().entries.map((item) {
            final color = categoryColors[item.key % categoryColors.length];
            List<BoxShadow> customShadow = [
              BoxShadow(
                  color: Colors.white.withOpacity(0.2),
                  spreadRadius: -5,
                  offset: Offset(-5, -5),
                  blurRadius: 20),
              BoxShadow(
                  color: color.withOpacity(.5),
                  spreadRadius: 2,
                  offset: Offset(7, 7),
                  blurRadius: 10),
            ];
            return Builder(builder: (context) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    cards.add(CardModel(
                        cardType: item.value.cardType,
                        name: item.value.name,
                        expDate: item.value.expDate,
                        cardNo: item.value.cardNo));
                  });
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => ConfirmationTab()),
                  );
                },
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 4),
                  // width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.99),
                    color: color,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black54,
                        offset: Offset(0, 2),
                        blurRadius: 2,
                      ),
                    ],
                    // image: DecorationImage(
                    //   image: AssetImage('assets/fruitbasket.png'),
                    //   fit: BoxFit.cover,
                    // ),
                  ),
                  child: Stack(
                    children: [
                      Positioned.fill(
                        top: 100,
                        bottom: -200,
                        child: Container(
                          decoration: BoxDecoration(
                              boxShadow: customShadow,
                              shape: BoxShape.circle,
                              color: Colors.white24),
                        ),
                      ),
                      Positioned.fill(
                        // left: -300,
                        left: -26,
                        top: -125,
                        right: 100,
                        bottom: -125,
                        child: Container(
                          decoration: BoxDecoration(
                              boxShadow: customShadow,
                              shape: BoxShape.circle,
                              color: Colors.white24),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Container(
                            height: 45,
                            width: 60,
                            decoration: BoxDecoration(
                              color: color,
                              boxShadow: customShadow,
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                      ),
                      item.value.cardType == "VISA"
                          ? Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                  // width: 100,
                                  padding: const EdgeInsets.all(30.0),
                                  child: Image.asset("assets/visa.png")),
                            )
                          : Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 20.0, right: 31, top: 20),
                                child: Container(
                                    width: 210,
                                    child: Image.asset(
                                        "assets/mastercardlogo.png")),
                              ),
                            ),
                      Positioned(
                        top: 75,
                        left: 31,
                        right: 31,
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "${item.value.cardNo.substring(0, 4)}",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFFFFFFFF)),
                              ),
                              Text(
                                " ****",
                                style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFFFFFFFF)),
                              ),
                              Text(
                                " **** ",
                                style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFFFFFFFF)),
                              ),
                              Text(
                                "${item.value.cardNo.substring(12, 16)}",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFFFFFFFF)),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: 121,
                        left: 31,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Card Holder",
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFFFFFFFF)),
                            ),
                            Text(
                              "${item.value.name}",
                              style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFFFFFFFF)),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        top: 121,
                        right: 100,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Expires",
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFFFFFFFF)),
                            ),
                            Text(
                              "${item.value.expDate}",
                              style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFFFFFFFF)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            });
          }).toList(),
        ),
        SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: cards.map((urlOfItem) {
            int index = cards.indexOf(urlOfItem);
            return Container(
              width: 6.0,
              height: 6.0,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _currentIndex == index
                    ? Color.fromRGBO(0, 0, 0, 0.8)
                    : Color.fromRGBO(0, 0, 0, 0.3),
              ),
            );
          }).toList(),
        ),
        SizedBox(
          height: 40,
        ),
        Divider(
          color: Color(0xFFF5F5F5),
          // color: Colors.grey,
          thickness: 1,
          height: 0,
        ),
      ],
    );
  }
}
