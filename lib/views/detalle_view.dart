import 'package:android_2p/constantes.dart';
import 'package:flutter/material.dart';

import '../models/user_model.dart';

class DetalleView extends StatelessWidget {
  DetalleView({Key? key, required this.user}) : super(key: key);
  UserModel user;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          leading: InkWell(
            customBorder: CircleBorder(),
            highlightColor: azulElectrico2.withOpacity(.35),
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_ios, size: 35),
          ),
        ),
        backgroundColor: dark,
        body: Center(
          child: Padding(
            padding: EdgeInsets.only(top: 20, right: 20, left: 20, bottom: 60),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 90,
                  child: Center(
                    child: Text(
                      "Usuario #${user.id}",
                      style: textstylenormal(size: 35, color: Colors.white),
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 500,
                  padding:
                      EdgeInsets.only(top: 30, right: 20, left: 20, bottom: 20),
                  decoration: BoxDecoration(
                      color: dark,
                      border: Border.all(
                          color: azulElectrico2.withOpacity(.8), width: 8),
                      borderRadius: BorderRadius.circular(60),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.white.withOpacity(.35),
                            spreadRadius: 5,
                            blurRadius: 6)
                      ]),
                  child: Center(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Nombre",
                            style:
                                textstylenormal(size: 30, color: Colors.white),
                          ),
                          Text(
                            user.nombre,
                            style: textstylenormal(color: rojo, size: 20),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Column(
                        children: [
                          Text(
                            "Escolaridad",
                            style:
                                textstylenormal(color: Colors.white, size: 15),
                          ),
                          Text(user.escolaridad,
                              style: textstylenormal(color: rojo, size: 20))
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Column(
                        children: [
                          Text(
                            "EstadoCivil",
                            style:
                                textstylenormal(color: Colors.white, size: 15),
                          ),
                          Text(user.estadoCivil,
                              style: textstylenormal(color: rojo, size: 20))
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Column(
                        children: [
                          Text(
                            "Habilidades",
                            style:
                                textstylenormal(color: Colors.white, size: 15),
                          ),
                          Text(user.habilidades,
                              style: textstylenormal(color: rojo, size: 20))
                        ],
                      ),
                    ],
                  )),
                ),
              ],
            ),
          ),
        ));
  }
}
