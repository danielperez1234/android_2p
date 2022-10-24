import 'package:android_2p/styles.dart';
import 'package:flutter/material.dart';

import '../models/modelo.dart';

class DetailView extends StatelessWidget {
  DetailView({Key? key, required this.user}) : super(key: key);
  Modelo user;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
          color: dark,
          child: Center(
            child: Padding(
              padding:
                  EdgeInsets.only(top: 60, right: 20, left: 20, bottom: 60),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 300,
                    height: 60,
                    decoration: BoxDecoration(
                        color: rojo,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(30),
                            topLeft: Radius.circular(30))),
                    child: Center(
                      child: Text(
                        "BRO INFO",
                        style: textstyleTitles(size: 35, color: textColor),
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 500,
                    padding: EdgeInsets.only(
                        top: 30, right: 20, left: 20, bottom: 20),
                    decoration: BoxDecoration(
                      color: amarillo,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(60),
                          bottomRight: Radius.circular(60),
                          topRight: Radius.circular(60)),
                    ),
                    child: Center(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Nombre",
                              style: textstyleTitles(size: 30, color: dark),
                            ),
                            Text(user.nombre)
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Column(
                          children: [
                            Text(
                              "Escolaridad",
                              style: textstyleTitles(
                                  color: Colors.black26, size: 15),
                            ),
                            Text(user.escolaridad)
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Column(
                          children: [
                            Text(
                              "EstadoCivil",
                              style: textstyleTitles(
                                  color: Colors.black26, size: 15),
                            ),
                            Text(user.estado)
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Column(
                          children: [
                            Text(
                              "Habilidades",
                              style: textstyleTitles(
                                  color: Colors.black26, size: 15),
                            ),
                            Text(user.habilidades)
                          ],
                        ),
                      ],
                    )),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
