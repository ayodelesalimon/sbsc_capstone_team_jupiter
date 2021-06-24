import 'dart:async';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sbsc_capstone_team_jupiter/screens/tab_controller.dart';
import 'package:sbsc_capstone_team_jupiter/widgets/colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'auth/onboarding_create.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({Key key}) : super(key: key);

  @override
  _LandingScreenState createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  Future<bool> _onWillPop() async {
    return (await showDialog(
          context: context,
          builder: (context) => BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 6, sigmaY: 6),
            child: new AlertDialog(
              title: new Text(
                'Exit App',
                style: TextStyle(color: Color(0xFFFF9E00)),
              ),
              content: new Text(
                'Do you want to exit the App?',
                style: TextStyle(color: Color(0xFF2788E9)),
              ),
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(15)),
              actions: <Widget>[
                FlatButton(
                  child: new Text(
                    'Yes',
                    style: TextStyle(color: Color(0xFF2788E9)),
                  ),
                  onPressed: () {
                    SystemNavigator.pop();
                  },
                ),
                FlatButton(
                  child: new Text(
                    'No',
                    style: TextStyle(color: Color(0xFFFF9E00)),
                  ),
                  onPressed: () {
                    Navigator.of(context).pop(false);
                  },
                ),
              ],
            ),
          ),
        )) ??
        false;
  }

  final controller = PageController(viewportFraction: 1.0);
  int _currentPage = 0;
  final List<String> images = [
    "assets/splash1.png",
    "assets/splash2.png",
    "assets/splash3.png",
  ];

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 30), (Timer timer) {
      if (_currentPage < 2) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }

      controller.animateToPage(
        _currentPage,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    });
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        body: Stack(
          children: [
            Directionality(
              textDirection: TextDirection.ltr,
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  //  SizedBox(height: 16),
                  SizedBox(
                    height: MediaQuery.of(context).size.height,
                    child: PageView(
                      controller: controller,
                      children: [
                        swipeable(
                            image: 'splash1.png',
                            title: 'Explore Fresh Organic ',
                            title1: 'Products Everyday',
                            title2:
                                'Search through a variety of products that ',
                            title4: 'help you keep fit and healthy, '),
                        swipeable(
                            image: 'splash2.png',
                            title: 'Eat healthy, Spend Wisely.',
                            title1: 'Be Happy',
                            title2: 'Discover products by our vendors at very',
                            title4: "affordable prices"),
                        swipeable(
                            image: 'splash3.png',
                            title: 'Fast Delivery within 24',
                            title1: 'Hours of purchase',
                            title2: 'Worried about time? Don’t stress, our',
                            title4:
                                "products are at our doorstep before sunset "),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  swipeable({image, title, title4, title1, title2}) {
    final MediaQueryData _mediaQueryData = MediaQuery.of(context);
    print('size ${_mediaQueryData.size.height}');
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/$image"),
          fit: BoxFit.cover,
          colorFilter: new ColorFilter.mode(
              Colors.lightGreenAccent.withOpacity(0.5), BlendMode.srcOver),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 18.0, bottom: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                //SizedBox(height: 20),
                SizedBox(
                  height: _mediaQueryData.size.height / 2.5,
                ),
                Container(
                  child: SmoothPageIndicator(
                    controller: controller,
                    count: 3,
                    effect: WormEffect(
                      dotColor: Colors.white,
                      activeDotColor: Colors.green,
                      radius: 10,
                      dotHeight: 10,
                      dotWidth: 10,
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),

                Text(
                  title,
                  softWrap: true,
                  style: TextStyle(
                    fontFamily: 'TT Norms Pro',
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                  ),
                ),

                Text(
                  title1,
                  softWrap: true,
                  style: TextStyle(
                    fontFamily: 'TT Norms Pro',
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  title2,
                  softWrap: true,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                Text(
                  title4,
                  softWrap: true,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                // Container(
                //     height: 50,
                //     width: 350,
                //     child: ElevatedButton(
                //       style: ElevatedButton.styleFrom(
                //         primary: primaryColor, // background
                //         onPrimary: Colors.white, // foreground
                //       ),
                //       onPressed: () => Navigator.of(context)
                //       .push(MaterialPageRoute(builder: (_) => TabView())),
                //       child: Text(
                //         "Get Started",
                //         style: TextStyle(
                //           fontFamily: 'TT Norms Pro',

                //           fontWeight: FontWeight.w700,
                //           color: Colors.white,
                //           fontSize: 18,
                //         ),
                //       ),
                //     )),

               
              ],
            ),
          ),

           Center(
                  child: GestureDetector(
                    onTap: () async {
                       Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => CreatePassPage()));
                    },
                    child: SizedBox(
                        width: 360,
                        height: 52,
                        child: Container(
                          child: Center(
                              child: Text(
                            'Get Started',
                             style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w800,
                              fontSize: 16,
                            ),
                          )),
                          decoration: BoxDecoration(
                              color: primaryColor,
                              borderRadius: BorderRadius.circular(10)),
                        )),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 25.0),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Have an account already?",
                          softWrap: true,
                          style: TextStyle(
                            fontFamily: 'TT Norms Pro',
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Text(
                            "Sign In",
                            softWrap: true,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w800,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
        ],
      ),
    );
  }
}
