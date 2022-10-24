import 'package:android_flutter/models/user_model.dart';
import 'package:android_flutter/views/registro.dart';
import 'package:android_flutter/widget/boton.dart';
import 'package:android_flutter/widget/entrada_texto.dart';
import 'package:flutter/material.dart';

import '../colores.dart';
import 'copmilado_usuario.dart';

List<Persona> users = [
  Persona(1, "admin", "VJ_FM.72673", "admin", "Soltero", "Doctorado", "Java C#")
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
    var x = SnackBar(content: Text("Datos de inicio erroneos."));
    ScaffoldMessenger.of(context).showSnackBar(x);
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
                    'VJ_FM.72673',
                    style: textstylenormal(color: Colors.white, size: 35),
                  ),
                  Image.network(
                    "https://vignette2.wikia.nocookie.net/leagueoflegends/images/7/70/Kindred_The_Lamb_2.png/revision/latest?cb=20150915213957",
                    width: 150,
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  EntradaText(controller: userController, hint: 'Usuario'),
                  SizedBox(
                    height: 22,
                  ),
                  EntradaText(
                    controller: passwordController,
                    hint: 'Contraseña',
                    isPassword: true,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ButtonApp(
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
