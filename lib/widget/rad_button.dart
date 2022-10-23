import 'package:android_2p/constantes.dart';
import 'package:flutter/material.dart';

class PRadButton extends StatefulWidget {
  PRadButton(
      {Key? key,
      this.color = amarillo,
      required this.onPress,
      this.selected = false})
      : super(key: key);
  Color color;
  bool selected;
  Function(bool) onPress;
  @override
  State<PRadButton> createState() => _PRadButtonState();
}

class _PRadButtonState extends State<PRadButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
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
              border: Border.all(
                color: widget.color,
              ),
              shape: BoxShape.circle),
          duration: Duration(milliseconds: 300),
          child: widget.selected
              ? AnimatedContainer(
                  width: 24,
                  height: 24,
                  duration: Duration(milliseconds: 300),
                  margin: EdgeInsets.all(3),
                  decoration: BoxDecoration(
                      color: widget.color, shape: BoxShape.circle),
                )
              : null,
        ),
      ),
    );
  }
}
