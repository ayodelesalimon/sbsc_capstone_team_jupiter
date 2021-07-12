import 'dart:math';

import 'package:flutter/material.dart';
//import 'package:memoize/memoize.dart';

Random random = new Random();

const Color primaryColor = Color(0xFF369637);
const Color lightPrimaryColor = Color(0XFF0CA2D9);
//const Color deepPrimaryColor = Color(0xFF2788E9);
const Color lightGrey = Color(0xFF5F6368);
const Color darkGrey = Color(0xFF3C4043);
const Color yellow = Color(0xFFFF9D00);
const Color orange = Color(0xFFFDEFE9);
const Color darkWhite = Color(0xFFFAFAFA);
const Color cardWhite = Color(0xFFF2F2F2);
const Color lighterGrey = Color(0xFFEAEAEA);
const Color darkShadowColor = Color(0x33000000);
const Color gray53 = Color(0xFF878787);
const Color osloGrey = Color(0xFF8F9295);
const Color cadetBlue = Color(0xFFA6ACBE);
const Color rollingStoneColor = Color(0xFF6F7577);
const Color darkLiver = Color(0xFFD16BEA);
const Color darkRed = Color(0xFFBB2F48);
const Color lightRed = Color(0xFFF8EAED);
const Color liteGreen = Color(0xFFEBF0EC);






List<Color> avatarColorArray = [
  Color(0xFFD16BEA),
  Color(0xFF95BC4E),
  Color(0xFFF5C364),
  Color(0xFF65B6ED),
  Color(0xFFEB5757),
  Color(0xFF56CCF2),
  Color(0xFFF2994A),
  Color(0xFF27AE60),
];

List appColors = [
  {'name': 'lightGrey', 'color': '#7C7C7C'}
];

Color hexConverter({String hexColor}) {
  final buffer = StringBuffer();
  if (hexColor.length == 6 || hexColor.length == 7) buffer.write('ff');
  buffer.write(hexColor.replaceFirst('#', ''));
  return Color(int.parse(buffer.toString(), radix: 16));
}

colorPicker({String colorName}) {
  final color = appColors.firstWhere((x) => x['name'] == colorName)['color'];
  return hexConverter(hexColor: color);
}

randomColor() {
  final color = avatarColorArray[Random().nextInt(avatarColorArray.length)];
  return color;
}

String getInitials({name}) {
  List<String> names = name.trim().split(" ");

  String initials = "";
  int numWords = names.length;

  if (numWords < names.length) {
    numWords = names.length;
  }
  for (var i = 0; i < numWords; i++) {
    initials += '${names[i][0]}';
  }
  return '${initials[0].toUpperCase()}.${initials[initials.length - 1].toUpperCase()}';
}

String getSingleInitial({name}) {
  return name.trim().split('')[0].toUpperCase();
} // Color memo0(()=> randomColor())

// Color testColor() {
//   MaterialColor res = randomColor();
//   var func = memo0(() => res.value);
//   final ress = int.parse(func.call().toString());
//   return Color(ress);
// }
