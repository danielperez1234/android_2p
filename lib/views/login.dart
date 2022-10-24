import 'package:android_2p/models/modelo.dart';
import 'package:android_2p/styles.dart';
import 'package:android_2p/views/list.dart';
import 'package:android_2p/views/regis.dart';
import 'package:android_2p/widget/btnapp.dart';
import 'package:android_2p/widget/textfield.dart';
import 'package:flutter/material.dart';

List<Modelo> usuarios = [
  Modelo(1, "josue", "Josue Meza", "josue", "casado", "Licenciatura", "Java"),
  Modelo(2, "laura", "Laura Perez", "laura", "Solero", "Licenciatura", "c#"),
];
int idUser = -1;

class login extends StatelessWidget {
  login({Key? key}) : super(key: key);
  TextEditingController userController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool verify(BuildContext context) {
    var usr = userController.text;
    var pas = passwordController.text;
    var lst = usuarios.where((element) => element.usuario == usr).toList();

    if (lst.length > 0) {
      var user = lst[0];
      if (user.contrasena == pas) {
        return true;
      }
    }
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              backgroundColor: amarillo.withOpacity(.8),
              title: Text(
                "Login error bro!",
                style: TextStyle(color: rojo, fontSize: 22),
              ),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Tus Licencias no estan registradas, intenta crear una cuenta de ${r'"Bro"'} si es que no tienes una cuenta.",
                    style: TextStyle(color: dark, fontSize: 17),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      "Nimodillo",
                      style: TextStyle(color: rojo, fontSize: 22),
                    ),
                  ),
                ],
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
              textF(controller: userController, hint: 'Usuario'),
              SizedBox(
                height: 22,
              ),
              textF(
                controller: passwordController,
                hint: 'Contraseña',
                isPassword: true,
              ),
              SizedBox(
                height: 20,
              ),
              btn2(
                  onPressed: () {
                    if (verify(context))
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LstUser(users: usuarios)),
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
                    style: textstyle(),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => registro()),
                        );
                      },
                      child: Text(
                        'Registrarme',
                        style: textoItalic(color: rojo, size: 16),
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
