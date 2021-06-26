import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SocialLogin extends StatelessWidget {
  const SocialLogin({
    Key key,
    this.name,
    this.textColor,
    this.icon,
    this.cardColor,
    this.onTap,
    this.fontColor,
  }) : super(key: key);
  final String name;
  final Color textColor, fontColor, cardColor;
  final IconData icon;

  final Function onTap;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: onTap,
        child: SizedBox(
            width: 360,
            height: 52,
            child: Container(
              child: Center(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FaIcon(
                      icon,
                      size: 16,
                      color: fontColor,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      name,
                      style: TextStyle(
                        color: textColor,
                        // fontStyle: FontStyle.,
                        fontWeight: FontWeight.w800,
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              decoration: BoxDecoration(
                  border: Border.all(
                      //color: Color(0xff10151a),
                      width: 2.0,
                      style: BorderStyle.solid),
                  color: cardColor,
                  borderRadius: BorderRadius.circular(10)),
            )),
      ),
    );
  }
}
