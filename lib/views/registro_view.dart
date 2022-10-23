import 'package:android_2p/constantes.dart';
import 'package:android_2p/models/user_model.dart';
import 'package:android_2p/views/list_view.dart';
import 'package:android_2p/views/login_view.dart';
import 'package:android_2p/widget/check_button.dart';
import 'package:android_2p/widget/drpo_down_cust.dart';
import 'package:android_2p/widget/large_button_custom.dart';
import 'package:android_2p/widget/rad_button.dart';
import 'package:android_2p/widget/text_field_custom.dart';
import 'package:flutter/material.dart';

class RegistroView extends StatefulWidget {
  RegistroView({Key? key}) : super(key: key);

  @override
  State<RegistroView> createState() => _RegistroViewState();
}

class _RegistroViewState extends State<RegistroView> {
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
      users.add(UserModel(
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
                    "Registro",
                    style: PtextstyleButton(size: 35),
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
                      PTextFieldCustom(
                          controller: userController, hint: "Usuario"),
                      SizedBox(
                        height: 35,
                      ),
                      PTextFieldCustom(
                          controller: nombreController, hint: 'Nombre'),
                      SizedBox(
                        height: 35,
                      ),
                      PTextFieldCustom(
                          controller: passwordController, hint: 'Contraseña'),
                      SizedBox(
                        height: 35,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Habilidades",
                            style: PtextstyleregularItalic(color: gris),
                          ),
                          Wrap(
                              direction: Axis.horizontal,
                              children: habilidadesList.map((e) {
                                int actualindex = habilidadesList.indexOf(e);
                                return Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      PCheckButton(
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
                                        style: Ptextstyleregular(),
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
                            style: PtextstyleregularItalic(color: gris),
                          ),
                          Wrap(
                              direction: Axis.horizontal,
                              children: lst.map((e) {
                                int actualindex = lst.indexOf(e);
                                return Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      PRadButton(
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
                                        style: Ptextstyleregular(),
                                      )
                                    ]);
                              }).toList()),
                        ],
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      AppDropDown(
                        list: ["Licenciatura", "Maestria", "Doctorado"],
                        onChange: (s) {
                          escolaridad = s;
                        },
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      PButtonLArgeCustom(
                          onPressed: () async {
                            var b = await Verify();
                            if (b)
                              Navigator.pushAndRemoveUntil(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          ListUsrView(users: users)),
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
