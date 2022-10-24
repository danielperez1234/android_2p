import 'package:flutter/material.dart';

import '../global/colores.dart';

class RadioBoton extends StatefulWidget {
  RadioBoton({Key? key, required this.onPress, this.selected = false})
      : super(key: key);
  bool selected;
  Function(bool) onPress;
  @override
  State<RadioBoton> createState() => _RadioBotonState();
}

class _RadioBotonState extends State<RadioBoton> {
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
                color: rojo,
              ),
              shape: BoxShape.circle),
          duration: Duration(milliseconds: 300),
          child: widget.selected
              ? AnimatedContainer(
                  width: 24,
                  height: 24,
                  duration: Duration(milliseconds: 300),
                  margin: EdgeInsets.all(3),
                  decoration:
                      BoxDecoration(color: rojo, shape: BoxShape.circle),
                )
              : null,
        ),
      ),
    );
  }
}
