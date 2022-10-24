import 'package:android_2p/constantes.dart';
import 'package:android_2p/models/user_model.dart';
import 'package:android_2p/views/login_view.dart';
import 'package:android_2p/widget/userInfo.dart';
import 'package:flutter/material.dart';

class ListUsrView extends StatelessWidget {
  ListUsrView({Key? key, required this.users}) : super(key: key);
  List<UserModel> users;
  void pingaDelMAny(BuildContext context) async {
    await showDialog(
        context: context,
        builder: (ctx) => AlertDialog(
              title: Text("Many se la come"),
              content: Text("Confirmo si se la come."),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: TextButton(
          onPressed: () {
            idUser = -1;
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => LoginView()),
                (s) => false);
          },
          child: Icon(
            Icons.logout,
            color: white,
          ),
        ),
        backgroundColor: grey,
        centerTitle: true,
        title: Text(
          "Usuarios",
          style: estilogrueso(color: white, size: 25),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        alignment: Alignment.topCenter,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 35,
                width: MediaQuery.of(context).size.width,
              ),
              ...users
                  .map((e) => Container(
                        margin: EdgeInsets.symmetric(vertical: 20),
                        child: userCard(
                          user: e,
                        ),
                      ))
                  .toList()
            ],
          ),
        ),
      ),
    );
  }
}
