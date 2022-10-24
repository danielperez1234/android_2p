import 'dart:ui';

import 'package:flutter/material.dart';

const dark = const Color(0xff292A31);
const textColor = const Color(0xffFFFFFF);
const gris = const Color(0xffa0a0a0);
const azul = const Color(0xff4871ff);
const rojo = const Color(0xffcf101f);
const amarillo = const Color(0xffFFB700);
TextStyle textstyleTitles({double size = 30, Color color = textColor}) =>
    TextStyle(
      fontFamily: "AbrilFatface",
      letterSpacing: 2,
      color: color,
      fontSize: size,
    );
TextStyle textstyle(
        {double size = 17, Color color = textColor, superScripts = false}) =>
    TextStyle(
      color: color,
      fontSize: size,
      fontWeight: FontWeight.w400,
    );
TextStyle textoItalic({double size = 17, Color color = textColor}) => TextStyle(
    fontStyle: FontStyle.italic,
    color: color,
    fontSize: size,
    fontWeight: FontWeight.w400);
TextStyle texto2({double size = 17, Color color = textColor}) =>
    TextStyle(color: color, fontSize: size, fontWeight: FontWeight.w500);
TextStyle textG({double size = 17, Color color = textColor}) =>
    TextStyle(color: color, fontSize: size, fontWeight: FontWeight.w600);
