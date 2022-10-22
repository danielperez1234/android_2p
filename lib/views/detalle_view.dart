import 'package:android_2p/constantes.dart';
import 'package:flutter/material.dart';

import '../models/user_model.dart';

class DetalleView extends StatelessWidget {
  DetalleView({Key? key, required this.user}) : super(key: key);
  UserModel user;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
          color: Pazuldark,
          child: Container(
            width: double.infinity,
            height: double.infinity,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Pblanco, Color(0xffF5F5F5)],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter),
                borderRadius: BorderRadius.circular(60)),
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 80),
            child: Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      "Nombre",
                      style: Ptextstylemedium(size: 25, color: Pazuldark),
                    ),
                    Text(user.nombre)
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "Escolaridad",
                      style: PtextstyleregularItalic(
                          color: Colors.black26, size: 15),
                    ),
                    Text(user.escolaridad)
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "EstadoCivil",
                      style: PtextstyleregularItalic(
                          color: Colors.black26, size: 15),
                    ),
                    Text(user.estadoCivil)
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "Habilidades",
                      style: PtextstyleregularItalic(
                          color: Colors.black26, size: 15),
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
