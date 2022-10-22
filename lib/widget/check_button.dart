import 'package:android_2p/constantes.dart';
import 'package:flutter/material.dart';

class PCheckButton extends StatefulWidget {
  PCheckButton({Key? key, required this.onPress, this.selected = false})
      : super(key: key);
  bool selected;
  Function(bool) onPress;
  @override
  State<PCheckButton> createState() => _PCheckButtonState();
}

class _PCheckButtonState extends State<PCheckButton> {
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
                color: Pnaranja,
                size: 27,
              )
            : Icon(
                Icons.check_box_outline_blank,
                color: Pnaranja,
                size: 27,
              ),
      ),
    );
  }
}
