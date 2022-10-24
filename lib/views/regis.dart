import 'package:android_2p/models/modelo.dart';
import 'package:android_2p/styles.dart';
import 'package:android_2p/views/list.dart';
import 'package:android_2p/views/login.dart';
import 'package:android_2p/widget/btnapp.dart';
import 'package:android_2p/widget/checkbtn.dart';
import 'package:android_2p/widget/dropdown.dart';
import 'package:android_2p/widget/radbtn.dart';
import 'package:android_2p/widget/textfield.dart';
import 'package:flutter/material.dart';

class registro extends StatefulWidget {
  registro({Key? key}) : super(key: key);

  @override
  State<registro> createState() => _registroState();
}

class _registroState extends State<registro> {
  TextEditingController userController = TextEditingController();

  TextEditingController nombreController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  List<String> lst = ['Soltero', 'Casado'];
  List<String> habilidadesList = ["Java", "C#", "C++"];
  int selection = -1;
  String estadoCivil = "";
  String habilidades = "";
  String escolaridad = "";
  Future<bool> Verify() async {
    if (userController.text != "" &&
        nombreController.text != "" &&
        passwordController.text != "" &&
        escolaridad != "" &&
        estadoCivil != "") {
      if (usuarios
          .where((element) => userController.text == element.usuario)
          .isNotEmpty) {
        await showDialog(
            context: context,
            builder: (context) => AlertDialog(
                  backgroundColor: amarillo.withOpacity(.8),
                  title: Text(
                    "Error en registro",
                    style: TextStyle(color: rojo, fontSize: 22),
                  ),
                  content: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "El usuario ya existe.",
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
                          "Buah",
                          style: TextStyle(color: rojo, fontSize: 22),
                        ),
                      )
                    ],
                  ),
                ));
        return false;
      }
      usuarios.add(Modelo(
          usuarios.last.id + 1,
          userController.text,
          nombreController.text,
          passwordController.text,
          estadoCivil,
          escolaridad,
          habilidades));
      return true;
    }
    await showDialog(
        context: context,
        builder: (context) => AlertDialog(
              backgroundColor: amarillo.withOpacity(.8),
              title: Text(
                "Error en registro",
                style: TextStyle(color: rojo, fontSize: 22),
              ),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Debe completar todos los datos.",
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
                      "Buah",
                      style: TextStyle(color: rojo, fontSize: 22),
                    ),
                  )
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
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: Text(
                    "Registro",
                    style: textG(size: 35),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: Center(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      textF(controller: userController, hint: "Usuario"),
                      SizedBox(
                        height: 35,
                      ),
                      textF(controller: nombreController, hint: 'Nombre'),
                      SizedBox(
                        height: 35,
                      ),
                      textF(controller: passwordController, hint: 'Contraseña'),
                      SizedBox(
                        height: 35,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Habilidades",
                            style: textoItalic(color: gris),
                          ),
                          Wrap(
                              direction: Axis.horizontal,
                              children: habilidadesList.map((e) {
                                int actualindex = habilidadesList.indexOf(e);
                                return Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      checkBtn(
                                        onPress: (i) {
                                          if (i) {
                                            habilidades = habilidades + e + ' ';
                                          } else {
                                            var sp = habilidades.split(" ");
                                            habilidades = "";
                                            sp.forEach((element) {
                                              if (element != e)
                                                habilidades + element;
                                            });
                                          }
                                          setState(() {});
                                        },
                                        selected: habilidades.contains(e),
                                      ),
                                      Text(
                                        e,
                                        style: textstyle(),
                                      )
                                    ]);
                              }).toList()),
                        ],
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Estado Civil",
                            style: textoItalic(color: gris),
                          ),
                          Wrap(
                              direction: Axis.horizontal,
                              children: lst.map((e) {
                                int actualindex = lst.indexOf(e);
                                return Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      radBtn(
                                        onPress: (i) {
                                          if (i) {
                                            estadoCivil = e;
                                            selection = actualindex;
                                          }
                                          setState(() {});
                                        },
                                        selected: selection == actualindex,
                                      ),
                                      Text(
                                        e,
                                        style: textstyle(),
                                      )
                                    ]);
                              }).toList()),
                        ],
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      dropBtn(
                        list: ["Licenciatura", "Maestria", "Doctorado"],
                        onChange: (s) {
                          escolaridad = s;
                        },
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      btn2(
                          onPressed: () async {
                            var b = await Verify();
                            if (b)
                              Navigator.pushAndRemoveUntil(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          LstUser(users: usuarios)),
                                  (route) => false);
                          },
                          text: 'Enviar'),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
