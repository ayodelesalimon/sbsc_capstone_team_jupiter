import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:sbsc_capstone_team_jupiter/screens/discover/components/discover_list.dart';
import 'package:sbsc_capstone_team_jupiter/screens/home/components/menudrawer.dart';
import 'package:sbsc_capstone_team_jupiter/widgets/colors.dart';

import '../../util/constants.dart';

class DiscoverPage extends StatefulWidget {
  const DiscoverPage({Key key}) : super(key: key);

  @override
  _DiscoverPageState createState() => _DiscoverPageState();
}

class _DiscoverPageState extends State<DiscoverPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final List<String> images = [
    "assets/food.png",
    "assets/food.png",
    "assets/food.png",
    "assets/food.png",
    "assets/food.png",
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
         endDrawerEnableOpenDragGesture: false,
        key: _scaffoldKey,
        drawer: MyDrawer(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              height: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 10, right: 14, top: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        IconButton(
                          onPressed: () {
                            _scaffoldKey.currentState.openDrawer();
                          },
                          alignment: Alignment.topCenter,
                          icon: Image.asset("assets/menu.png", width: 40),
                        ),
                        Text(
                          "Discover",
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 24),
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        Icon(
                          Icons.search,
                          size: 30,
                        ),
                        CircleAvatar(
                          backgroundColor: primaryColor,
                          child: Image.asset('assets/images/shop.png'),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: DiscoverList(),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                child: 
                
                StaggeredGridView.countBuilder(
                  scrollDirection: Axis.vertical,
                  crossAxisCount: 4,
                  itemCount: images.length,
                  itemBuilder: (BuildContext context, int index) =>
                      SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(images[index]),
                                fit: BoxFit.cover),
                            border: Border.all(
                                color: Color(0xffeeeeee), width: 2.0),
                            color: Colors.white38,
                            borderRadius:
                                BorderRadius.all(Radius.circular(8.0)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.white10,
                                blurRadius: 4,
                                spreadRadius: 2,
                                offset: Offset(0, 2),
                              ),
                            ],
                          ),
                          // margin: EdgeInsets.all(8),
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
                          padding: EdgeInsets.only(bottom: 20),
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
                                      "name",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w300,
                                          fontSize: 14),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      "Herbsconnect Organic \nAcai Berry Powder Freeze \nDried",
                                      softWrap: true,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w800,
                                          fontSize: 13),
                                    ),
                                    spacer5,
                                    Container(
                                      child: Row(
                                        //  crossAxisAlignment: CrossAxisAlignment.center,
                                        //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Text(
                                            "N34,000.00",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w800,
                                                fontSize: 12,
                                                color: yellow),
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            ".",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w800,
                                                fontSize: 12,
                                                color: darkGrey),
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            "In Stock",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w800,
                                                fontSize: 10,
                                                color: primaryColor),
                                          ),
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
                    ),
                  ),
                  staggeredTileBuilder: (int index) => new StaggeredTile.fit(2),
                  mainAxisSpacing: 4.0,
                  crossAxisSpacing: 15.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
