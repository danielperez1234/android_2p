import 'package:android_2p/models/modelo.dart';
import 'package:android_2p/styles.dart';
import 'package:android_2p/views/login.dart';
import 'package:android_2p/widget/userobject.dart';
import 'package:flutter/material.dart';

class LstUser extends StatelessWidget {
  LstUser({Key? key, required this.users}) : super(key: key);
  List<Modelo> users;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: TextButton(
          onPressed: () {
            idUser = -1;
            Navigator.pushAndRemoveUntil(context,
                MaterialPageRoute(builder: (context) => login()), (s) => false);
          },
          child: Icon(
            Icons.backspace_outlined,
            color: textColor,
          ),
        ),
        backgroundColor: dark,
        title: Text(
          "Bros",
          style: textstyleTitles(color: textColor, size: 30),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        alignment: Alignment.topCenter,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 10,
                width: MediaQuery.of(context).size.width,
              ),
              ...users
                  .map((e) => Container(
                        margin: EdgeInsets.symmetric(vertical: 5),
                        child: userObject(
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
