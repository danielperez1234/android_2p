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
  bool verify() {
    var usr = userController.text;
    var pas = passwordController.text;
    var lst = users.where((element) => element.usuario == usr).toList();

    if (lst.length > 0) {
      var user = lst[0];
      if (user.Password == pas) {
        return true;
      }
    }
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
              Container(
                padding: EdgeInsets.all(6),
                decoration: BoxDecoration(
                    color: Color(0xfff5f5f5),
                    boxShadow: [
                      BoxShadow(
                          color: textColor.withOpacity(.3),
                          offset: Offset(5, 15),
                          blurRadius: 12)
                    ],
                    border: Border.all(color: rojo, width: 15),
                    borderRadius: BorderRadius.circular(60)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(55),
                  child: Image.network(
                    "https://i.pinimg.com/564x/7f/9d/38/7f9d38947fe1f5771d9cfb10ae4597ed.jpg",
                    width: 200,
                  ),
                ),
              ),
              SizedBox(
                height: 35,
              ),
              Text(
                'Welcome Bro!',
                style: textstyleTitles(color: azul, size: 25),
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
                  onPressed: () {
                    if (verify())
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "No tengo cuenta bro!",
                    style: Ptextstyleregular(),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RegistroView()),
                        );
                      },
                      child: Text(
                        'Registrarme',
                        style: PtextstyleregularItalic(color: rojo, size: 16),
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
