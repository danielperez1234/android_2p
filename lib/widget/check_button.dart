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
    return InkWell(
      onTap: () {
        widget.selected = !widget.selected;
        widget.onPress(widget.selected);
      },
      child: Container(
        padding: EdgeInsets.all(5),
        child: AnimatedContainer(
          height: 27,
          width: 27,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
              border: Border.all(
                color: verde,
              ),
              shape: BoxShape.rectangle),
          duration: Duration(milliseconds: 300),
          child: widget.selected
              ? Container(
                  width: 24,
                  height: 24,
                  margin: EdgeInsets.all(3),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: verde,
                      shape: BoxShape.rectangle),
                  child: Icon(
                    Icons.check,
                    color: dark,
                    size: 16,
                  ),
                )
              : null,
        ),
      ),
    );
  }
}
