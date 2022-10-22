import 'dart:math' as mth;
import 'dart:ui';

import 'package:flutter/material.dart';

///Colores planos
const Pacua = const Color(0xff6CAD9A);
const Pacua2 = const Color(0xffaed4c7);
const Pacua3 = const Color(0xffDFEEE9);
const Pazul = const Color(0xffD7EEF4);
const Pazul2 = const Color(0xffA0E0F2);
const Pazuldark = const Color(0xff26444D);
const Pnaranja = const Color(0xffFB7E62);

const Projo = const Color(0xffc23624);
const Ptext = const Color(0xff4A4A4A);
const Ptextgrey = const Color(0xffc4c4c4);
const Pgreylight = const Color(0xfff0f0f0);
const PgreyA0 = const Color(0xffa0a0a0);
const Phinttext = const Color(0xffbababa);
const Pblanco = const Color(0xffFFFFFF);

const Panaranjado = const Color(0xffF7C178);
const Prosado = const Color(0xffF1A7B5);
const Pazulshiny = const Color(0xffA0E5D5);
const Plila = const Color(0xffDFC0EA);
const Ppay = const Color(0xffFFDE98);
const Pverdeshiny = const Color(0xffD0E6A5);
const Pbone = const Color(0xffFFEED6);

Color kverdeaguaopacity = Color(0xff6CAD9A).withOpacity(.4);
Color kverde = Color(0xffBCC539);
Color kverdeclaro = Color(0xffD7DD7E);

Color kgris = Color(0xffF6F6F6);
Color kazul = Color(0xff9BD2E0);
Color kfolder = Color(0xffFFF4E5);

Color kbajo = Color(0xffFFE9BB);
Color kalto = Color(0xffFFC373);
Color kmuyalto = Color(0xffFF7676);

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

List<Color> colors = [
  Panaranjado,
  Prosado,
  Pazulshiny,
  Plila,
  Ppay,
  Pverdeshiny,
  Pbone
];
//https://maketintsandshades.com/#26444D
MaterialColor kToDark = const MaterialColor(
  0xff26444d, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
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
TextStyle PtextstyleButton({double size = 14, Color color = Pblanco}) =>
    TextStyle(
        fontFamily: 'Poppins',
        color: color,
        fontSize: size,
        fontWeight: FontWeight.w600);
TextStyle Ptextstyleregular(
        {double size = 14, Color color = Ptext, superScripts = false}) =>
    TextStyle(
        fontFamily: 'Poppins',
        color: color,
        fontSize: size,
        fontWeight: FontWeight.w400,
        fontFeatures: superScripts ? [FontFeature.superscripts()] : null);
TextStyle PtextstyleregularItalic({double size = 14, Color color = Ptext}) =>
    TextStyle(
        fontStyle: FontStyle.italic,
        fontFamily: 'Poppins',
        color: color,
        fontSize: size,
        fontWeight: FontWeight.w400);
TextStyle Ptextstylemedium({double size = 14, Color color = Pblanco}) =>
    TextStyle(
        fontFamily: 'Poppins',
        color: color,
        fontSize: size,
        fontWeight: FontWeight.w500);
TextStyle PtextstyleHint({double size = 14, Color color = Phinttext}) =>
    TextStyle(fontFamily: 'Poppins', color: color, fontSize: size);
TextStyle PtextstyleLight({double size = 14, Color color = Phinttext}) =>
    TextStyle(
        fontFamily: 'Poppins',
        color: color,
        fontSize: size,
        fontWeight: FontWeight.w300);

TextStyle buildTextFieldStyle(double fontSize) {
  return TextStyle(
      color: Pazuldark,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w400,
      fontSize: fontSize,
      letterSpacing: .25);
}

TextStyle buildHintTextStyle(double fontSize) {
  return TextStyle(
    color: Colors.grey,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w400,
    fontSize: fontSize, /*letterSpacing: .25*/
  );
}

TextStyle BtnTextStyle(double fontSize) {
  return TextStyle(
    color: Colors.white,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w600,
    fontSize: fontSize, /* letterSpacing: .25*/
  );
}

TextStyle BtnText(double fontSize) {
  return TextStyle(
    color: Colors.white,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w400,
    fontSize: fontSize, /* letterSpacing: .25*/
  );
}

TextStyle BtnTextActive(double fontSize) {
  return TextStyle(
    color: Pacua,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w600,
    fontSize: fontSize, /* letterSpacing: .25*/
  );
}

TextStyle BtnTextStyleDisable(double fontSize) {
  return TextStyle(
      color: Colors.white,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w600,
      fontSize: fontSize,
      letterSpacing: .25);
}

TextStyle StyleHeaders(double fontSize) {
  return TextStyle(
      color: Pnaranja,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w500,
      fontSize: fontSize,
      letterSpacing: .25);
}

TextStyle StyleLight(double fontSize) {
  return TextStyle(
      color: Ptext,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w300,
      fontSize: fontSize,
      letterSpacing: 10);
}

TextStyle StyleFecha(double fontSize) {
  return TextStyle(
      color: Ptext,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w500,
      fontSize: fontSize);
}

TextStyle StyleQuestion(double fontSize) {
  return TextStyle(
      color: Ptext,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w600,
      fontSize: fontSize);
}

Container uncheck() {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(
        Radius.circular(5),
      ),
      border: Border.all(color: Pacua, width: 2.0),
    ),
  );
}

Container check() {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(
        Radius.circular(5),
      ),
      border: Border.all(color: Pacua, width: 2.0),
    ),
    child: Container(
      color: Pacua,
      child: Icon(
        Icons.check,
        color: Colors.white,
      ),
    ),
  );
}

TextStyle StyleFechaBold(double fontSize) {
  return TextStyle(
      color: Ptext,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w700,
      fontSize: fontSize);
}

TextStyle textStyleHeaderTab() {
  return TextStyle(
    color: Pazuldark,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w600,
    fontSize: 15,
  );
}

TextStyle textStyleHeaderTab12() {
  return TextStyle(
    color: Pazuldark,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w600,
    fontSize: 12,
  );
}

TextStyle TextStyleCellText() {
  return TextStyle(
    color: Ptext,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w400,
    fontSize: 14,
  );
}

TextStyle StyleEtiqueta({double size = 10}) => TextStyle(
    fontSize: size, fontWeight: FontWeight.w500, fontFamily: 'Poppins');
TextStyle StyleItalic() => TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      fontFamily: 'Poppins',
      fontStyle: FontStyle.italic,
    );

//converters
DateTime PStringToTimeAAAAMMDDHHMMSS(String timeString) {
  var aux = timeString.split("T");
  var date = aux[0].split("-");
  var time = aux[1].split(":");
  return DateTime(int.parse(date[0]), int.parse(date[1]), int.parse(date[2]),
      int.parse(time[0]), int.parse(time[1]), int.parse(time[2].split(".")[0]));
}

DateTime PStringToDateDDMMAAAA(String dateString, {String splitChar = "/"}) {
  var x = dateString.split(splitChar);
  if (x.length != 3) return DateTime(1, 1, 1);
  var date = DateTime(int.parse(x[2]), int.parse(x[1]), int.parse(x[0]));
  return date;
}

String PDateToStringDDMMAAAA(DateTime date) {
  var str =
      '${date.day.toString().padLeft(2, '0')}/${date.month.toString().padLeft(2, '0')}/${date.year.toString()}';
  return str;
}

DateTime PStringToDateAAAAMMDD(String dateString, {String splitChar = '/'}) {
  var x = dateString.split(splitChar);
  if (x.length != 3) return DateTime(1, 1, 1);
  var date = DateTime(int.parse(x[0]), int.parse(x[1]), int.parse(x[2]));
  return date;
}

String PDateToStringAAAAMMDD(DateTime date, {String splitChar = '/'}) {
  var str =
      '${date.year.toString()}$splitChar${date.month.toString().padLeft(2, '0')}$splitChar${date.day.toString().padLeft(2, '0')}';
  return str;
}

String PDateToStringDDMMAA(DateTime date) {
  var str =
      '${date.day.toString().padLeft(2, '0')}/${date.month.toString().padLeft(2, '0')}/${date.year.toString().substring(2)}';
  return str;
}

DateTime PStringToDateTimeHHMMSS(String dt) {
  var aux = dt.split(":").map((e) => int.parse(e)).toList();
  DateTime newDate = DateTime(1, 1, 1, aux[0], aux[1]);
  return newDate;
}

String PStringHHMMToStringHHMMSS(String time, {splitChar = ":"}) {
  var aux = time.split(splitChar);
  String ss = "00";
  if (aux.length > 2) ss = aux[2].padLeft(2, "0");
  var str = "${aux[0].padLeft(2, "0")}:${aux[1].padLeft(2, "0")}:${ss}";
  return str;
}

// functions
bool PDateIsToday(DateTime dt) {
  var now = DateTime.now();
  if (dt.day == now.day) if (dt.month == now.month) if (dt.year == now.year)
    return true;
  return false;
}

extension StringExtension on String {
  ///Pone en tod un string solo la primera letra como mayuscula
  String capitalize() {
    return "${this[0].toUpperCase()}${this.substring(1)}";
  }

  String SuperScr() {
    var upper = {
      '0': '\u2070',
      '1': '\u00B9',
      '2': '\u00B2',
      '3': '\u00B3',
      '4': '\u2074',
      '5': '\u2075',
      '6': '\u2076',
      '7': '\u2077',
      '8': '\u2078',
      '9': '\u2079',
      'a': '\u1d43',
      'b': '\u1d47',
      'c': '\u1d9c',
      'd': '\u1d48',
      'e': '\u1d49',
      'f': '\u1da0',
      'g': '\u1d4d',
      'h': '\u02b0',
      'i': '\u2071',
      'j': '\u02b2',
      'k': '\u1d4f',
      'l': '\u02e1',
      'm': '\u1d50',
      'n': '\u207f',
      'o': '\u1d52',
      'p': '\u1d56',
      'q': '?',
      'r': '\u02b3',
      's': '\u02e2',
      't': '\u1d57',
      'u': '\u1d58',
      'v': '\u1d5b',
      'w': '\u02b7',
      'x': '\u02e3',
      'y': '\u02b8',
      'z': '?',
      'A': '\u1d2c',
      'B': '\u1d2e',
      'C': '?',
      'D': '\u1d30',
      'E': '\u1d31',
      'F': '?',
      'G': '\u1d33',
      'H': '\u1d34',
      'I': '\u1d35',
      'J': '\u1d36',
      'K': '\u1d37',
      'L': '\u1d38',
      'M': '\u1d39',
      'N': '\u1d3a',
      'O': '\u1d3c',
      'P': '\u1d3e',
      'Q': '?',
      'R': '\u1d3f',
      'S': '?',
      'T': '\u1d40',
      'U': '\u1d41',
      'V': '\u2c7d',
      'W': '\u1d42',
      'X': '?',
      'Y': '?',
      'Z': '?',
      '+': '\u207A',
      '-': '\u207B',
      '=': '\u207C',
      '(': '\u207D',
      ')': '\u207E'
    };
    String str = "";
    var aux = this.split("");
    aux.forEach((element) {
      str = str + (upper[element] ?? "");
    });
    return str;
  }
}

double IMC(double altura, double peso) {
  if (altura > 0) {
    var _res = 0.0;
    _res = peso / (mth.pow(altura, 2));
    return _res;
  }
  return 0;
}

Color IMCColor(double imc) {
  Color _color = Pblanco;
  if (imc < 18.5 && imc > 0) {
    _color = kbajo;
  } else if (imc >= 18.5 && imc < 25) {
    _color = Pverdeshiny;
  } else if (imc >= 25 && imc < 30) {
    _color = kalto;
  } else if (imc >= 30) {
    _color = kmuyalto;
  }
  return _color;
}
