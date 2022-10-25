import 'package:martha_flutter/constantes.dart';
import 'package:martha_flutter/models/user_model.dart';
import 'package:martha_flutter/views/detalle_view.dart';
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
      decoration: BoxDecoration(color: white, boxShadow: [
        BoxShadow(
            color: blue.withOpacity(.35), offset: Offset(0, 13), blurRadius: 8)
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
                      style: estilogrueso(color: pink, size: 35),
                    ),
                    Text(
                      user.escolaridad,
                      style: italicStyle(color: greyLight, size: 18),
                    )
                  ],
                )
              ],
            ),
          )),
    );
  }
}
