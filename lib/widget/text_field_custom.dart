import 'package:android_2p/constantes.dart';
import 'package:flutter/material.dart';

class PTextFieldCustom extends StatefulWidget {
  PTextFieldCustom(
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
  State<PTextFieldCustom> createState() => _PTextFieldCustomState();
}

class _PTextFieldCustomState extends State<PTextFieldCustom> {
  bool isPress = false;
  @override
  Widget build(BuildContext context) {
    var Psize = MediaQuery.of(context).size;

    return Container(
      width: Psize.width,
      height: 60,
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(color: dark, boxShadow: [
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
              style: Ptextstylemedium(size: 20),
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(bottom: 17),
                hintText: widget.hint,
                hintStyle: PtextstyleHint(size: 20),
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
