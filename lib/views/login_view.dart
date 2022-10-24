import 'package:android_2p/constantes.dart';
import 'package:android_2p/models/user_model.dart';
import 'package:android_2p/views/list_view.dart';
import 'package:android_2p/views/registro_view.dart';
import 'package:android_2p/widget/button.dart';
import 'package:android_2p/widget/text.dart';
import 'package:flutter/material.dart';

List<UserModel> users = [
  UserModel(1, "usuario1", "nombre", "Password", "estadoCivil", "escolaridad",
      "habilidades"),
  UserModel(2, "usuario2", "nombre", "Password", "estadoCivil", "escolaridad",
      "habilidades"),
  UserModel(3, "usuario3", "nombre", "Password", "estadoCivil", "escolaridad",
      "habilidades"),
  UserModel(4, "usuario4", "nombre", "Password", "estadoCivil", "escolaridad",
      "habilidades"),
];
int idUser = -1;

class LoginView extends StatelessWidget {
  LoginView({Key? key}) : super(key: key);
  TextEditingController userController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool verify(BuildContext context) {
    var usr = userController.text;
    var pas = passwordController.text;
    var lst = users.where((element) => element.usuario == usr).toList();

    if (lst.length > 0) {
      var user = lst[0];
      if (user.Password == pas) {
        return true;
      }
    }
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              title: Text(
                "Error end datos",
                style: detallesStyle(size: 25),
              ),
              content: Text(
                "Vuelve a ingresar tus datos o intenta registrarte como nuevo usuario.",
                style: normalStyle(color: blue),
              ),
            ));
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                "Martha Style",
                style: detallesStyle(size: 30),
              ),
              Text(
                'Login',
                style: normalStyle(color: darckblue, size: 25),
              ),
              SizedBox(
                height: 20,
              ),
              userInfo(controller: userController, hint: 'Usuario'),
              SizedBox(
                height: 22,
              ),
              userInfo(
                controller: passwordController,
                hint: 'Contraseña',
                isPassword: true,
              ),
              SizedBox(
                height: 20,
              ),
              bttn(
                  onPressed: () {
                    if (verify(context))
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ListUsrView(users: users)),
                          (route) => false);
                  },
                  text: "iniciar"),
              SizedBox(
                height: 10,
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => RegistroView()),
                    );
                  },
                  child: Text(
                    'Registrarme',
                    style: italicStyle(color: blue, size: 16),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
