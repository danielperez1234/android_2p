import 'package:android_flutter/colores.dart';
import 'package:flutter/material.dart';

import '../models/user_model.dart';
import '../widget/boton.dart';
import '../widget/tile_usuario.dart';
import 'login.dart';

class ListUsrView extends StatelessWidget {
  ListUsrView({Key? key, required this.users}) : super(key: key);
  List<Persona> users;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: bg,
        title: Text(
          "Registros",
          style: textstylenormal(color: Colors.white, size: 30),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        alignment: Alignment.topLeft,
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                      width: MediaQuery.of(context).size.width,
                    ),
                    ...users
                        .map((e) => Container(
                              margin: EdgeInsets.symmetric(vertical: 5),
                              child: Tarjeta(
                                user: e,
                              ),
                            ))
                        .toList()
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            ButtonApp(
                onPressed: () {
                  idUser = -1;
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) => LoginView(
                                size: MediaQuery.of(context).size.width,
                              )),
                      (s) => false);
                },
                text: "LogOut"),
            SizedBox(
              height: 35,
            ),
          ],
        ),
      ),
    );
  }
}
