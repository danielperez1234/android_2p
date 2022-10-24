import 'package:flutter/material.dart';

const azulElectrico = Color(0xff282ad2);
const azulElectrico2 = Color(0xff5153e3);
const rojo = const Color(0xffFF646F);
const verde = const Color(0xff00B364);
const amarillo = const Color(0xffFF9E00);
const bg = const Color(0xff191835);
const gris = const Color(0xffaaaaaa);
Gradient electricoGradient() {
  return LinearGradient(
      begin: Alignment.bottomCenter,
      end: Alignment.topCenter,
      colors: [azulElectrico.withOpacity(.5), azulElectrico2.withOpacity(.5)]);
}

TextStyle textstylenormal({double size = 14, Color? color}) => TextStyle(
      fontFamily: "Comfortaa",
      color: color ?? Colors.white,
      fontSize: size,
      fontWeight: FontWeight.w400,
    );
TextStyle PtextstyleregularItalic({double size = 14, Color? color}) =>
    TextStyle(
        fontFamily: "Comfortaa",
        fontStyle: FontStyle.italic,
        color: color ?? Colors.white,
        fontSize: size,
        fontWeight: FontWeight.w400);
TextStyle textstyle600({double size = 20, Color? color}) => TextStyle(
    fontFamily: "Comfortaa",
    color: color ?? Colors.white,
    fontSize: size,
    fontWeight: FontWeight.w600);
