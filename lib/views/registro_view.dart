import 'package:martha_flutter/constantes.dart';
import 'package:martha_flutter/models/user_model.dart';
import 'package:martha_flutter/views/list_view.dart';
import 'package:martha_flutter/views/login_view.dart';
import 'package:martha_flutter/widget/button.dart';
import 'package:martha_flutter/widget/check.dart';
import 'package:martha_flutter/widget/drop.dart';
import 'package:martha_flutter/widget/radio.dart';
import 'package:martha_flutter/widget/text.dart';
import 'package:flutter/material.dart';

class RegistroView extends StatefulWidget {
  RegistroView({Key? key}) : super(key: key);

  @override
  State<RegistroView> createState() => _RegistroViewState();
}

class _RegistroViewState extends State<RegistroView> {
  TextEditingController usr = TextEditingController();

  TextEditingController nme = TextEditingController();

  TextEditingController pss = TextEditingController();

  List<String> civil = ['Soltero', 'Casado'];
  List<String> hList = ["Java", "C#", "C++"];
  int selection = -1;
  String estadoCivil = "";
  String habilidades = "";
  String escolaridad = "";
  Future<bool> Verify() async {
    if (usr.text != "" &&
        nme.text != "" &&
        pss.text != "" &&
        escolaridad != "" &&
        estadoCivil != "") {
      if (users.where((element) => usr.text == element.usuario).isNotEmpty) {
        showDialog(
            context: context,
            builder: (context) => AlertDialog(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  title: Text(
                    "Error end registro",
                    style: detallesStyle(size: 25),
                  ),
                  content: Text(
                    "El usuario que se intento usar.",
                    style: normalStyle(color: blue),
                  ),
                ));
        return false;
      }
      users.add(UserModel(users.last.id + 1, usr.text, nme.text, pss.text,
          estadoCivil, escolaridad, habilidades));
      return true;
    }
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              title: Text(
                "Error en registro",
                style: detallesStyle(size: 25),
              ),
              content: Text(
                "Debes completar todos los campos.",
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
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Text(
              "Registro de Usuario",
              style: estilogrueso(size: 35, color: grey),
            ),
            SizedBox(
              height: 15,
            ),
            Expanded(
              child: Center(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      userInfo(controller: usr, hint: "Usuario"),
                      SizedBox(
                        height: 35,
                      ),
                      userInfo(controller: nme, hint: 'Nombre'),
                      SizedBox(
                        height: 35,
                      ),
                      userInfo(controller: pss, hint: 'Contraseña'),
                      SizedBox(
                        height: 35,
                      ),
                      dropBttn(
                        list: ["Licenciatura", "Maestria", "Doctorado"],
                        onChange: (s) {
                          escolaridad = s;
                        },
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Habilidades",
                            style: italicStyle(color: Colors.black26),
                          ),
                          Wrap(
                              direction: Axis.vertical,
                              children: hList.map((e) {
                                int actualindex = hList.indexOf(e);
                                return Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      checkBttn(
                                        onPress: (i) {
                                          if (i) {
                                            habilidades = habilidades + e + ' ';
                                          } else {
                                            var sp = habilidades.split(" ");
                                            habilidades = "";
                                            sp.forEach((element) {
                                              if (element != e &&
                                                  element != " ")
                                                habilidades =
                                                    habilidades + element + " ";
                                            });
                                          }
                                          setState(() {});
                                        },
                                        selected: habilidades.contains(e),
                                      ),
                                      Text(e)
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
                            style: italicStyle(color: Colors.black26),
                          ),
                          Wrap(
                              direction: Axis.horizontal,
                              children: civil.map((e) {
                                int actualindex = civil.indexOf(e);
                                return Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      radBttn(
                                        onPress: (i) {
                                          if (i) {
                                            estadoCivil = e;
                                            selection = actualindex;
                                          }
                                          setState(() {});
                                        },
                                        selected: selection == actualindex,
                                      ),
                                      Text(e)
                                    ]);
                              }).toList()),
                        ],
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      bttn(
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
