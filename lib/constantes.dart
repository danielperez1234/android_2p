import 'dart:ui';

import 'package:flutter/material.dart';

///Colores planos
const Pacua = const Color(0xff4a7387);
const Pacua2 = const Color(0xff93D8F8);
const Pazuldark = const Color(0xff2D2F51);
const Pnaranja = const Color(0xffFF97B5);

const Ptext = Colors.black;
const PgreyA0 = Colors.grey;
const Pblanco = Color(0xffF2F7FF);
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
TextStyle PtextstyleButton({double size = 16, Color color = Pblanco}) =>
    TextStyle(color: color, fontSize: size, fontWeight: FontWeight.w600);

TextStyle PtextstyleregularItalic({double size = 16, Color color = Ptext}) =>
    TextStyle(
        fontStyle: FontStyle.italic,
        color: color,
        fontSize: size,
        fontWeight: FontWeight.w400);
TextStyle Ptextstylemedium({double size = 16, Color color = Pblanco}) =>
    TextStyle(color: color, fontSize: size, fontWeight: FontWeight.w500);
TextStyle PtextstyleHint({double size = 16, Color color = PgreyA0}) =>
    TextStyle(color: color, fontSize: size);
TextStyle PtextstyleDetalles({double size = 16, Color color = Pnaranja}) =>
    TextStyle(color: color, fontSize: size, fontFamily: 'Satisfy');
