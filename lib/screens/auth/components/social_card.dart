import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SocialLogin extends StatelessWidget {
  const SocialLogin({
    Key key,
    this.title,
    this.textColor,
    this.icon,
    this.cardColor,
    this.onTap,
    this.borderWidth,
    this.image,this.imgheight,this.imgwidth,this.marginright,
  }) : super(key: key);
  final String title,image;
  final Color textColor,cardColor;
  final IconData icon;
  final double borderWidth,imgwidth,imgheight,marginright;

  final Function onTap;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: onTap,
        child: SizedBox(
            width: 327,
            height: 52,
            child: Container(
              child: Center(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                   Image.asset(image,width: imgwidth,height: imgheight,),
                    SizedBox(
                      width: marginright,
                    ),
                    Text(
                      title,
                      style: TextStyle(
                        color: textColor,
                        // fontStyle: FontStyle.,
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Color(0xff10151a),
                      width: borderWidth,
                      style: BorderStyle.solid),
                  color: cardColor,
                  borderRadius: BorderRadius.circular(5)),
            )),
      ),
    );
  }
}
