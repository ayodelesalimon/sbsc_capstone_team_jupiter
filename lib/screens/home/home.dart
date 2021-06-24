import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sbsc_capstone_team_jupiter/widgets/colors.dart';
import 'components/best_sell.dart';
import 'components/category.dart';
import 'components/menudrawer.dart';
import 'components/promo.dart';
import 'components/test.dart';

class HomesCreen extends StatefulWidget {
  const HomesCreen({Key key}) : super(key: key);

  @override
  _HomesCreenState createState() => _HomesCreenState();
}

class _HomesCreenState extends State<HomesCreen> {
final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        endDrawerEnableOpenDragGesture: false,
        key: _scaffoldKey,
        drawer: MyDrawer(),
        body: SingleChildScrollView(
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.only(top: 8.0, left: 20, right: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
 _scaffoldKey.currentState.openDrawer();
                      
                    },
                    alignment: Alignment.topCenter,
                    icon: Image.asset("assets/menu.png", width: 40),
                  ),
                  Text(
                    "Ayuaba Fresh",
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
                  ),
                  CircleAvatar(
                    backgroundColor: primaryColor,
                    child: Image.asset('assets/images/shop.png'),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 255.0),
              child: Text(
                "Hi, Andrea",
                style: TextStyle(fontWeight: FontWeight.w300, fontSize: 18),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 24.0),
              child: Text(
                "What are you looking for today?",
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Colors.grey,
                    fontSize: 28),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 24.0, right: 24.0),
              child: TextField(
                decoration: InputDecoration(
                  fillColor: Colors.grey,
                  hintText: "Search product",
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: FaIcon(FontAwesomeIcons.search, size: 30, color: darkGrey),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24.0, right: 24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Categories",
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18, color: primaryColor),
                  ),

                  
                  Row(
                    children: [
                      Text("View all"), SizedBox(width: 5,), FaIcon(FontAwesomeIcons.arrowRight, size: 16, color: darkGrey,)],
                  ),
                ],
              ),
            ),
            Categories(),
            SizedBox(
              height: 2,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24.0, right: 24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Today's Promo",
                    style: TextStyle(color: primaryColor, fontWeight: FontWeight.w700, fontSize: 18),
                  ),
                   Row(
                    children: [
                      Text("View all"), SizedBox(width: 5,), FaIcon(FontAwesomeIcons.arrowRight, size: 16, color: darkGrey,)],
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),

            PromoSection(),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 24.0, right: 24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Best Selling",
                    style: TextStyle(color: primaryColor, fontWeight: FontWeight.w700, fontSize: 18),
                  ),
                   Row(
                    children: [
                      Text("View all"), SizedBox(width: 5,), FaIcon(FontAwesomeIcons.arrowRight, size: 16, color: darkGrey,)],
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),

  BestSellSection(),


          ],
          ),
        ),
      ),
    );
  }
}
