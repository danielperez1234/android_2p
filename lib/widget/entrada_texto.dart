import 'package:flutter/material.dart';

import '../global/colores.dart';
import '../global/styles.dart';

class EntradaText extends StatefulWidget {
  EntradaText(
      {Key? key,
      required this.controller,
      required this.hint,
      this.isPassword = false,
      this.width,
      this.height})
      : super(key: key);
  double? width;
  double? height;
  TextEditingController controller;
  bool isPassword;
  String hint;
  @override
  State<EntradaText> createState() => _EntradaTextState();
}

class _EntradaTextState extends State<EntradaText> {
  bool isPress = false;
  @override
  Widget build(BuildContext context) {
    var Psize = MediaQuery.of(context).size;

    return Container(
      width: Psize.width,
      height: 60,
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(color: bg, boxShadow: [
        BoxShadow(
            color: azulElectrico2.withOpacity(.2),
            offset: Offset(0, 5),
            blurRadius: 3)
      ]),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: Psize.width / 1.875,
            height: 40,
            child: TextField(
              textAlignVertical: TextAlignVertical.center,
              keyboardType: TextInputType.emailAddress,
              style: textstylenormal(size: 20),
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(bottom: 17),
                hintText: widget.hint,
                hintStyle: textstyle600(color: gris),
                border: InputBorder.none,
                disabledBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                focusedErrorBorder: InputBorder.none,
              ),
              controller: widget.controller,
              obscureText: !isPress && widget.isPassword,
              obscuringCharacter: '*',
            ),
          ),
        ],
      ),
    );
  }
}
