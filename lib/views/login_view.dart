import 'package:android_2p/constantes.dart';
import 'package:android_2p/models/user_model.dart';
import 'package:android_2p/views/list_view.dart';
import 'package:android_2p/views/registro_view.dart';
import 'package:android_2p/widget/large_button_custom.dart';
import 'package:android_2p/widget/text_field_custom.dart';
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
  Future<bool> verify(BuildContext context) async {
    var usr = userController.text;
    var pas = passwordController.text;
    var lst = users.where((element) => element.usuario == usr).toList();

    if (lst.length > 0) {
      var user = lst[0];
      if (user.Password == pas) {
        return true;
      }
      await showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: Text("Error en inicio de sesión"),
                content: Text("Contraseña equivocada."),
              ));
      return false;
    }
    await showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text("Error en inicio de sesión"),
              content: Text("usuario no existe."),
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
                'Login',
                style: Ptextstylemedium(color: Pacua, size: 25),
              ),
              SizedBox(
                height: 20,
              ),
              PTextFieldCustom(controller: userController, hint: 'Usuario'),
              SizedBox(
                height: 22,
              ),
              PTextFieldCustom(
                controller: passwordController,
                hint: 'Contraseña',
                isPassword: true,
              ),
              SizedBox(
                height: 20,
              ),
              PButtonLArgeCustom(
                  onPressed: () async {
                    if (await verify(context))
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
                    style: PtextstyleregularItalic(color: Pacua2, size: 16),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
