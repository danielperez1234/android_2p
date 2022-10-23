import 'package:android_2p/constantes.dart';
import 'package:android_2p/views/login_view.dart';
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
          primaryColor: Pblanco,
          backgroundColor: Pblanco,
          textSelectionTheme: TextSelectionThemeData(
              selectionHandleColor: Pnaranja,
              selectionColor: Pnaranja,
              cursorColor: Pazuldark),
          canvasColor: Pblanco,
          primarySwatch: PMaterialColor(Pazuldark)),
      home: LoginView(),
    );
  }
}
