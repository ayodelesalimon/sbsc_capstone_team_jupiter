import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:sbsc_capstone_team_jupiter/widgets/colors.dart';

Alert({String title, String content, BuildContext context}) {
  return showDialog(
      context: context,
      builder: (BuildContext context) => BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 6, sigmaY: 6),
            child: AlertDialog(
              title: new Text(
                title,
                style: TextStyle(color: Color(0xFFFF9E00)),
              ),
              content: new Text(
                content,
                style: TextStyle(color: primaryColor),
              ),
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(10)),
              actions: <Widget>[
                FlatButton(
                  child: new Text(
                    'Ok',
                    style: TextStyle(color: primaryColor),
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),
          ));
}

Widget buttonWidget(
    {@required VoidCallback buttonAction,
    @required Color buttonColor,
    @required String buttonText}) {
  return Material(
    color: buttonColor,
    borderRadius: BorderRadius.all(Radius.circular(5)),
    elevation: 1,
    child: MaterialButton(
      onPressed: buttonAction,
      child: Text(
        buttonText,
        style: TextStyle(
            color: Colors.white, fontSize: 16, fontWeight: FontWeight.w700),
      ),
    ),
  );
}

Widget outlineButtonWidget(
    {@required VoidCallback buttonAction,
    // @required Color buttonColor,
    @required String buttonText}) {
  return Material(
    color: Colors.transparent,
    // elevation: 1,
    shape: RoundedRectangleBorder(
      side: BorderSide(color: Color(0xFF10151A)),
      borderRadius: BorderRadius.all(Radius.circular(5)),
    ),
    child: MaterialButton(
      onPressed: buttonAction,
      child: Text(
        buttonText,
        style: TextStyle(
            color: Color(0xFF10151A),
            fontSize: 16,
            fontWeight: FontWeight.w700),
      ),
    ),
  );
}

Widget buildAddressInputField(
    {String text,
    TextEditingController controller,
    Function(String) onChange,
    Function(String) validate}) {
  return TextFormField(
    autofocus: false,
    cursorColor: Color(0xFF10151A),
    style: TextStyle(
        fontSize: 15, color: Color(0xFF10151A), fontWeight: FontWeight.w700),

    onChanged: onChange,
    validator: validate,
    controller: controller,
    // onChanged: (tit) {
    //   if (tit.isNotEmpty) {
    //     setState(() {
    //       title = tit;
    //     });
    //   }
    // },
    maxLines: null,
    decoration: InputDecoration(
      contentPadding: EdgeInsets.symmetric(horizontal: 13.5, vertical: 16),
      hintText: text,
      hintStyle: TextStyle(
          color: Color(0xFFBABABA), fontWeight: FontWeight.w400, fontSize: 15),
      filled: true,
      fillColor: Color(0xFFF7F7F7),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: BorderSide(color: Color(0xFFF7F7F7)),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: BorderSide(color: Color(0xFFF7F7F7)),
      ),
    ),
  );
}

Padding buildAddressSubTitle(String text, VoidCallback onPress) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 24,
              color: Color(0xFF10151A)),
        ),
        TextButton.icon(
            onPressed: onPress,
            icon: Icon(
              Icons.add,
              color: Color(0xFF3E3E3E),
              size: 18,
            ),
            label: Text(
              "Add Address",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 13,
                  color: Color(0xFF3E3E3E)),
            ))
      ],
    ),
  );
}
