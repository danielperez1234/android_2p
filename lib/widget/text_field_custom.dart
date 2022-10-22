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
      width: widget.width ?? Psize.width / 1.875,
      height: widget.height ?? 40,
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: Pblanco,
        border: Border(
            left: BorderSide(color: Pnaranja),
            bottom: BorderSide(color: Pnaranja)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: widget.width ?? (Psize.width / 1.875) - 65,
            height: widget.height ?? 40,
            child: TextField(
              textAlignVertical: TextAlignVertical.center,
              keyboardType: TextInputType.emailAddress,
              style: Ptextstylemedium(color: Pazuldark),
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(bottom: 17),
                hintText: widget.hint,
                hintStyle: PtextstyleHint(),
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
