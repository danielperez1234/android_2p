import 'dart:ui';

import 'package:flutter/material.dart';

///Colores planos
const azul = const Color(0xff4871ff);
const rojo = const Color(0xffcf101f);
const amarillo = const Color(0xffFFB700);

const dark = const Color(0xff292A31);
const textColor = const Color(0xffFFFFFF);
const gris = const Color(0xffa0a0a0);

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

MaterialColor kToDark = const MaterialColor(
  0xff26444d,
  const <int, Color>{
    50: const Color(0xff223d45), //10%
    100: const Color(0xff1e363e), //20%
    200: const Color(0xff1b3036), //30%
    300: const Color(0xff17292e), //40%
    400: const Color(0xff132227), //50%
    500: const Color(0xff0f1b1f), //60%
    600: const Color(0xff0b1417), //70%
    700: const Color(0xff080e0f), //80%
    800: const Color(0xff040708), //90%
    900: const Color(0xff000000), //100%
  },
);
//styles
TextStyle textstyleTitles({double size = 30, Color color = textColor}) =>
    TextStyle(
      fontFamily: "AbrilFatface",
      letterSpacing: 2,
      color: color,
      fontSize: size,
    );
TextStyle PtextstyleButton({double size = 14, Color color = textColor}) =>
    TextStyle(color: color, fontSize: size, fontWeight: FontWeight.w600);
TextStyle Ptextstyleregular(
        {double size = 14, Color color = textColor, superScripts = false}) =>
    TextStyle(
        color: color,
        fontSize: size,
        fontWeight: FontWeight.w400,
        fontFeatures: superScripts ? [FontFeature.superscripts()] : null);
TextStyle PtextstyleregularItalic(
        {double size = 14, Color color = textColor}) =>
    TextStyle(
        fontStyle: FontStyle.italic,
        color: color,
        fontSize: size,
        fontWeight: FontWeight.w400);
TextStyle Ptextstylemedium({double size = 14, Color color = textColor}) =>
    TextStyle(color: color, fontSize: size, fontWeight: FontWeight.w500);
TextStyle PtextstyleHint({double size = 14, Color color = gris}) =>
    TextStyle(fontFamily: 'Poppins', color: color, fontSize: size);
TextStyle PtextstyleLight({double size = 14, Color color = gris}) =>
    TextStyle(color: color, fontSize: size, fontWeight: FontWeight.w300);
