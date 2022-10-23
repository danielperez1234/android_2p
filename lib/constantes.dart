import 'dart:ui';

import 'package:flutter/material.dart';

///Colores planos
const rojo = const Color(0xffFF646F);
const azulElectrico = Color(0xff282ad2);
const azulElectrico2 = Color(0xff5153e3);

const verde = const Color(0xff00B364);
const amarillo = const Color(0xffFF9E00);

const dark = const Color(0xff191835);
const gris = const Color(0xffaaaaaa);

PMaterialColor(Color color) {
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

Gradient electricoGradient() {
  return LinearGradient(
      begin: Alignment.bottomCenter,
      end: Alignment.topCenter,
      colors: [azulElectrico.withOpacity(.5), azulElectrico2.withOpacity(.5)]);
}

TextStyle PtextstyleButton({double size = 14, Color color = Colors.white}) =>
    TextStyle(
        fontFamily: "Comfortaa",
        color: color,
        fontSize: size,
        fontWeight: FontWeight.w600);
TextStyle textstylenormal(
        {double size = 14, Color color = Colors.white, superScripts = false}) =>
    TextStyle(
        fontFamily: "Comfortaa",
        color: color,
        fontSize: size,
        fontWeight: FontWeight.w400,
        fontFeatures: superScripts ? [FontFeature.superscripts()] : null);
TextStyle PtextstyleregularItalic(
        {double size = 14, Color color = Colors.white}) =>
    TextStyle(
        fontFamily: "Comfortaa",
        fontStyle: FontStyle.italic,
        color: color,
        fontSize: size,
        fontWeight: FontWeight.w400);
TextStyle Ptextstylemedium({double size = 14, Color color = Colors.white}) =>
    TextStyle(
        fontFamily: "Comfortaa",
        color: color,
        fontSize: size,
        fontWeight: FontWeight.w500);
TextStyle PtextstyleHint({double size = 14, Color color = gris}) =>
    TextStyle(fontFamily: "Comfortaa", color: color, fontSize: size);
TextStyle PtextstyleLight({double size = 14, Color color = gris}) => TextStyle(
    fontFamily: "Comfortaa",
    color: color,
    fontSize: size,
    fontWeight: FontWeight.w300);
