import 'dart:math';

import 'package:android_2p/constantes.dart';
import 'package:android_2p/models/user_model.dart';
import 'package:android_2p/views/detalle_view.dart';
import 'package:flutter/material.dart';

class userCard extends StatelessWidget {
  userCard({
    Key? key,
    required this.user,
  }) : super(key: key);
  UserModel user;
  List<Color> colorL = [rojo, verde, amarillo];
  @override
  Widget build(BuildContext context) {
    int rand = 0 + Random().nextInt(3 - 0);
    return Container(
      decoration: BoxDecoration(color: dark, boxShadow: [
        BoxShadow(
            color: Colors.white.withOpacity(.05),
            offset: Offset(0, 3),
            blurRadius: 1)
      ]),
      child: RawMaterialButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => DetalleView(user: user)));
          },
          elevation: 0,
          highlightElevation: 0,
          hoverElevation: 0,
          fillColor: Colors.transparent,
          child: Container(
            width: MediaQuery.of(context).size.width - 60,
            height: 90,
            child: Row(
              children: [
                Container(
                  height: 90,
                  width: 100,
                  padding: EdgeInsets.only(right: 30),
                  decoration: BoxDecoration(
                      color: colorL[rand],
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(50),
                          bottomRight: Radius.circular(50))),
                  child: Image.network(
                    "https://www.pngall.com/wp-content/uploads/5/User-Profile-PNG.png",
                    height: 50,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    Text(
                      user.nombre,
                      style: PtextstyleButton(color: Colors.white, size: 35),
                    ),
                    Text(
                      user.escolaridad,
                      style: PtextstyleregularItalic(color: gris, size: 18),
                    )
                  ],
                )
              ],
            ),
          )),
    );
  }
}
