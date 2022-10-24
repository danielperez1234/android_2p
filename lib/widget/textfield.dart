import 'package:android_2p/styles.dart';
import 'package:flutter/material.dart';

class textF extends StatefulWidget {
  textF(
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
  State<textF> createState() => _textFState();
}

class _textFState extends State<textF> {
  bool isPress = false;
  @override
  Widget build(BuildContext context) {
    var Psize = MediaQuery.of(context).size;

    return Container(
      width: widget.width ?? Psize.width / 1.875,
      height: widget.height ?? 40,
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
          color: dark,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                color: gris.withOpacity(.2),
                offset: Offset(0, 10),
                blurRadius: 8)
          ]),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: widget.width ?? (Psize.width / 1.875) - 65,
            height: widget.height ?? 40,
            child: TextField(
              textAlignVertical: TextAlignVertical.center,
              keyboardType: TextInputType.emailAddress,
              style: texto2(),
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(bottom: 17),
                hintText: widget.hint,
                hintStyle: textstyle(color: gris),
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
