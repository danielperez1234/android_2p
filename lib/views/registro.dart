import 'package:android_flutter/models/user_model.dart';
import 'package:android_flutter/views/login.dart';
import 'package:android_flutter/widget/boton.dart';
import 'package:android_flutter/widget/check_box.dart';
import 'package:android_flutter/widget/drop.dart';
import 'package:android_flutter/widget/entrada_texto.dart';
import 'package:android_flutter/widget/radio_boton.dart';
import 'package:flutter/material.dart';

import '../global/colores.dart';
import 'copmilado_usuario.dart';

class RegistroView extends StatefulWidget {
  RegistroView({Key? key}) : super(key: key);

  @override
  State<RegistroView> createState() => _RegistroViewState();
}

class _RegistroViewState extends State<RegistroView> {
  TextEditingController userController = TextEditingController();

  TextEditingController nombreController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  List<String> estados = ['Soltero', 'Casado', 'Viudo', 'Divorciado'];
  int estadoIndex = -1;
  String estadoCivil = "";
  String habilidades = "";
  List<String> habilidadesList = ["Java", "C#", "flutter", "kotlin", 'Python'];
  String escolaridad = "";
  Future<bool> VerificacionRegistro() async {
    if (userController.text != "" &&
        nombreController.text != "" &&
        passwordController.text != "" &&
        escolaridad != "" &&
        estadoCivil != "") {
      if (users
          .where((element) => userController.text == element.usuario)
          .isNotEmpty) {
        await showDialog(
            context: context,
            builder: (context) => AlertDialog(
                  title: Text("Error en registro"),
                  content: Text("El usuario ya existe."),
                ));
        return false;
      }
      users.add(Persona(
          users.last.id + 1,
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
              title: Text("Error en registro"),
              content: Text("Debe completar todos los datos."),
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
                    "Nuevo usuario",
                    style: textstyle600(size: 35),
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
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      EntradaText(controller: userController, hint: "Usuario"),
                      SizedBox(
                        height: 35,
                      ),
                      EntradaText(controller: nombreController, hint: 'Nombre'),
                      SizedBox(
                        height: 35,
                      ),
                      EntradaText(
                          controller: passwordController, hint: 'Contraseña'),
                      SizedBox(
                        height: 35,
                      ),
                      DropDownApp(
                        list: ["Licenciatura", "Maestria", "Doctorado"],
                        onChange: (s) {
                          escolaridad = s;
                        },
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: double.infinity,
                          ),
                          Text(
                            "Habilidades",
                            style: PtextstyleregularItalic(color: gris),
                          ),
                          Wrap(
                              alignment: WrapAlignment.spaceBetween,
                              direction: Axis.horizontal,
                              children: habilidadesList.map((e) {
                                int actualindex = habilidadesList.indexOf(e);
                                return Container(
                                  width: 100,
                                  alignment: Alignment.center,
                                  child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        ChackBoxApp(
                                          onPress: (i) {
                                            if (i) {
                                              habilidades =
                                                  habilidades + e + ' ';
                                            } else {
                                              var sp = habilidades.split(" ");
                                              habilidades = "";
                                              sp.forEach((element) {
                                                if (element != e)
                                                  habilidades = habilidades +
                                                      element +
                                                      ' ';
                                              });
                                            }
                                            setState(() {});
                                          },
                                          selected: habilidades.contains(e),
                                        ),
                                        Text(
                                          e,
                                          style: textstylenormal(),
                                        )
                                      ]),
                                );
                              }).toList()),
                        ],
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Estado Civil",
                            style: PtextstyleregularItalic(color: gris),
                          ),
                          Column(
                              children: estados.map((e) {
                            int actualindex = estados.indexOf(e);
                            return Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  RadioBoton(
                                    onPress: (i) {
                                      if (i) {
                                        estadoCivil = e;
                                        estadoIndex = actualindex;
                                      }
                                      setState(() {});
                                    },
                                    selected: estadoIndex == actualindex,
                                  ),
                                  Text(
                                    e,
                                    style: textstylenormal(),
                                  )
                                ]);
                          }).toList()),
                        ],
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      ButtonApp(
                          onPressed: () async {
                            var b = await VerificacionRegistro();
                            if (b)
                              Navigator.pushAndRemoveUntil(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          ListUsrView(users: users)),
                                  (route) => false);
                          },
                          text: 'registrar'),
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
