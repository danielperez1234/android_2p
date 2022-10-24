import 'package:android_flutter/views/login.dart';
import 'package:flutter/material.dart';

import 'global/colores.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          primaryColor: bg,
          backgroundColor: bg,
          textSelectionTheme: TextSelectionThemeData(
              selectionHandleColor: amarillo,
              selectionColor: azulElectrico2,
              cursorColor: bg),
          canvasColor: bg,
          primarySwatch: MaterialColor(2, {
            50: bg.withOpacity(.1),
            100: bg.withOpacity(.2),
            200: bg.withOpacity(.3),
            300: bg.withOpacity(.4),
            400: bg.withOpacity(.5),
            500: bg.withOpacity(.6),
            600: bg.withOpacity(.7),
            700: bg.withOpacity(.8),
            800: bg.withOpacity(.9),
            900: bg.withOpacity(.10),
          })),
      home: start(),
    );
  }
}

class start extends StatelessWidget {
  const start({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext, BoxConstraints) {
        return LoginView(
          size: BoxConstraints.maxWidth,
        );
      },
    );
  }
}
