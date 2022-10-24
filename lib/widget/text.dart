import 'package:android_2p/constantes.dart';
import 'package:flutter/material.dart';

class userInfo extends StatefulWidget {
  userInfo(
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
  State<userInfo> createState() => _userInfoState();
}

class _userInfoState extends State<userInfo> {
  bool isPress = false;
  @override
  Widget build(BuildContext context) {
    var Psize = MediaQuery.of(context).size;

    return Container(
      width: widget.width ?? Psize.width / 1.875,
      height: widget.height ?? 40,
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: white,
        border: Border(
            left: BorderSide(color: pink), bottom: BorderSide(color: pink)),
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
              style: normalStyle(color: grey),
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(bottom: 17),
                hintText: widget.hint,
                hintStyle: normalStyle(color: greyLight),
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
