import 'package:android_2p/models/modelo.dart';
import 'package:android_2p/styles.dart';
import 'package:android_2p/views/detail.dart';
import 'package:flutter/material.dart';

class userObject extends StatelessWidget {
  userObject({
    Key? key,
    required this.user,
  }) : super(key: key);
  Modelo user;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: dark,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
                color: textColor.withOpacity(.05),
                offset: Offset(0, 3),
                blurRadius: 1)
          ]),
      child: RawMaterialButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => DetailView(user: user)));
          },
          elevation: 0,
          highlightElevation: 0,
          hoverElevation: 0,
          fillColor: Colors.transparent,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          child: Container(
            width: MediaQuery.of(context).size.width - 60,
            height: 120,
            padding: EdgeInsets.all(20),
            child: Row(
              children: [
                Icon(
                  Icons.person_outline_outlined,
                  color: azul,
                  size: 35,
                ),
                SizedBox(
                  width: 50,
                ),
                Column(
                  children: [
                    Text(
                      user.nombre,
                      style: textG(color: textColor, size: 35),
                    ),
                    Text(
                      user.escolaridad,
                      style: textoItalic(color: gris, size: 18),
                    )
                  ],
                )
              ],
            ),
          )),
    );
  }
}
