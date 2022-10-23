import 'package:android_2p/models/user_model.dart';
import 'package:android_2p/views/copmilado_usuario.dart';
import 'package:android_2p/views/registro.dart';
import 'package:android_2p/widget/boton.dart';
import 'package:android_2p/widget/entrada_texto.dart';
import 'package:flutter/material.dart';

import '../global/colores.dart';
import '../global/styles.dart';

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

class LoginView extends StatefulWidget {
  LoginView({Key? key, required this.size}) : super(key: key);
  double size;
  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  double anim = 0;
  bool animationEnd = false;

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

  void animate() async {
    await Future.delayed(Duration(seconds: 4));

    anim = 5;
    setState(() {});
    await Future.delayed(Duration(seconds: 2));
    animationEnd = true;
    setState(() {});
  }

  @override
  void initState() {
    // TODO: implement initState
    anim = widget.size;
    super.initState();

    animate();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Stack(
        children: [
          Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Text(
                    'Vircovs App',
                    style: textstylenormal(color: Colors.white, size: 35),
                  ),
                  Image.network(
                    "https://pngimg.com/uploads/anime_girl/anime_girl_PNG46.png",
                    width: 150,
                  ),
                  SizedBox(
                    height: 35,
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
                                  builder: (context) =>
                                      ListUsrView(users: users)),
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
                          MaterialPageRoute(
                              builder: (context) => RegistroView()),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(color: bg, boxShadow: [
                          BoxShadow(
                              color: azulElectrico2.withOpacity(.3),
                              offset: Offset(0, 4),
                              blurRadius: 2)
                        ]),
                        child: Text(
                          'Registrarme',
                          style: PtextstyleregularItalic(
                              color: Colors.white, size: 16),
                        ),
                      ))
                ],
              ),
            ),
          ),
          if (!animationEnd)
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                AnimatedContainer(
                  width: anim,
                  height: double.infinity,
                  duration: Duration(seconds: 2),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Colors.transparent, bg], stops: [0, .01])),
                ),
              ],
            ),
        ],
      ),
    );
  }
}
