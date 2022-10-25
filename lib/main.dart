import 'package:martha_flutter/constantes.dart';
import 'package:martha_flutter/views/login_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primaryColor: white,
          backgroundColor: white,
          textSelectionTheme: TextSelectionThemeData(
              selectionHandleColor: pink,
              selectionColor: pink,
              cursorColor: grey),
          canvasColor: white,
          primarySwatch: customMaterial(grey)),
      home: LoginView(),
    );
  }
}
