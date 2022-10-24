import 'dart:ui';

import 'package:flutter/material.dart';

const darckblue = const Color(0xff4a7387);
const blue = const Color(0xff93D8F8);
const grey = const Color(0xff2D2F51);
const pink = const Color(0xffFF97B5);
const black = Colors.black;
const greyLight = Colors.grey;
const white = Color(0xffF2F7FF);
customMaterial(Color color) {
  return MaterialColor(2, {
    50: color.withOpacity(.1),
    100: color.withOpacity(.2),
    200: color.withOpacity(.3),
    300: color.withOpacity(.4),
    400: color.withOpacity(.5),
    500: color.withOpacity(.6),
    600: color.withOpacity(.7),
    700: color.withOpacity(.8),
    800: color.withOpacity(.9),
    900: color.withOpacity(.10),
  });
}

//styles
TextStyle estilogrueso({double size = 16, Color color = white}) =>
    TextStyle(color: color, fontSize: size, fontWeight: FontWeight.w600);

TextStyle italicStyle({double size = 16, Color color = black}) => TextStyle(
    fontStyle: FontStyle.italic,
    color: color,
    fontSize: size,
    fontWeight: FontWeight.w400);
TextStyle normalStyle({double size = 16, Color color = white}) =>
    TextStyle(color: color, fontSize: size, fontWeight: FontWeight.w500);

TextStyle detallesStyle({double size = 16, Color color = pink}) =>
    TextStyle(color: color, fontSize: size, fontFamily: 'Satisfy');
