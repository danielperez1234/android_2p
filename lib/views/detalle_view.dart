import 'package:martha_flutter/constantes.dart';
import 'package:flutter/material.dart';

import '../models/user_model.dart';

class DetalleView extends StatelessWidget {
  DetalleView({Key? key, required this.user}) : super(key: key);
  UserModel user;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
          color: grey,
          child: Container(
            width: double.infinity,
            height: double.infinity,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(color: white, boxShadow: [
              BoxShadow(
                  color: pink.withOpacity(.5),
                  offset: Offset(5, 5),
                  blurRadius: 20,
                  spreadRadius: 10),
              BoxShadow(
                  color: blue.withOpacity(.20),
                  offset: Offset(-2, -7),
                  blurRadius: 3)
            ]),
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 80),
            child: Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      "Nombre",
                      style: normalStyle(size: 25, color: pink),
                    ),
                    Text(user.nombre)
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "Escolaridad",
                      style: italicStyle(color: Colors.black26, size: 15),
                    ),
                    Text(user.escolaridad)
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "EstadoCivil",
                      style: italicStyle(color: Colors.black26, size: 15),
                    ),
                    Text(user.estadoCivil)
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "Habilidades",
                      style: italicStyle(color: Colors.black26, size: 15),
                    ),
                    Text(user.habilidades)
                  ],
                ),
              ],
            )),
          )),
    );
  }
}
