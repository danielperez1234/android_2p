import 'package:android_2p/constantes.dart';
import 'package:android_2p/models/user_model.dart';
import 'package:android_2p/widget/large_button_custom.dart';
import 'package:android_2p/widget/user_card.dart';
import 'package:flutter/material.dart';

import 'login_view.dart';

class ListUsrView extends StatelessWidget {
  ListUsrView({Key? key, required this.users}) : super(key: key);
  List<UserModel> users;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: dark,
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
                              child: userCard(
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
            PButtonLArgeCustom(
                onPressed: () {
                  idUser = -1;
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => LoginView()),
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
