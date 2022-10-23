import 'dart:ui';

import 'package:flutter/material.dart';

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
