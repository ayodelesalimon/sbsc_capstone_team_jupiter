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