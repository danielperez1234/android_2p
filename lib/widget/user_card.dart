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
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Pblanco, boxShadow: [
        BoxShadow(
            color: Ptext.withOpacity(.35), offset: Offset(0, 13), blurRadius: 8)
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
            width: double.infinity,
            alignment: Alignment.center,
            padding: EdgeInsets.all(15),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Column(
                  children: [
                    Text(
                      user.nombre,
                      style: PtextstyleButton(color: Pnaranja, size: 35),
                    ),
                    Text(
                      user.escolaridad,
                      style: PtextstyleregularItalic(color: PgreyA0, size: 18),
                    )
                  ],
                )
              ],
            ),
          )),
    );
  }
}
