import 'package:android_2p/constantes.dart';
import 'package:flutter/material.dart';

class checkBttn extends StatefulWidget {
  checkBttn({Key? key, required this.onPress, this.selected = false})
      : super(key: key);
  bool selected;
  Function(bool) onPress;
  @override
  State<checkBttn> createState() => _checkBttnState();
}

class _checkBttnState extends State<checkBttn> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        widget.selected = !widget.selected;
        widget.onPress(widget.selected);
      },
      icon: Container(
        padding: EdgeInsets.all(5),
        child: widget.selected
            ? Icon(
                Icons.check_box,
                color: pink,
                size: 27,
              )
            : Icon(
                Icons.check_box_outline_blank,
                color: pink,
                size: 27,
              ),
      ),
    );
  }
}
