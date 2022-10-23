import 'dart:ui';

import 'package:flutter/material.dart';

///Colores planos
const Pacua = const Color(0xff6CAD9A);
const Pacua2 = const Color(0xffaed4c7);
const Pazuldark = const Color(0xff26444D);
const Pnaranja = const Color(0xffFB7E62);

const Ptext = const Color(0xff4A4A4A);
const Pgreylight = const Color(0xfff0f0f0);
const PgreyA0 = const Color(0xffa0a0a0);
const Phinttext = const Color(0xffbababa);
const Pblanco = const Color(0xffFFFFFF);

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

//styles
TextStyle PtextstyleButton({double size = 14, Color color = Pblanco}) =>
    TextStyle(color: color, fontSize: size, fontWeight: FontWeight.w600);
TextStyle Ptextstyleregular(
        {double size = 14, Color color = Ptext, superScripts = false}) =>
    TextStyle(
        color: color,
        fontSize: size,
        fontWeight: FontWeight.w400,
        fontFeatures: superScripts ? [FontFeature.superscripts()] : null);
TextStyle PtextstyleregularItalic({double size = 14, Color color = Ptext}) =>
    TextStyle(
        fontStyle: FontStyle.italic,
        color: color,
        fontSize: size,
        fontWeight: FontWeight.w400);
TextStyle Ptextstylemedium({double size = 14, Color color = Pblanco}) =>
    TextStyle(color: color, fontSize: size, fontWeight: FontWeight.w500);
TextStyle PtextstyleHint({double size = 14, Color color = Phinttext}) =>
    TextStyle(color: color, fontSize: size);
TextStyle PtextstyleLight({double size = 14, Color color = Phinttext}) =>
    TextStyle(color: color, fontSize: size, fontWeight: FontWeight.w300);
