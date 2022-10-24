import 'package:flutter/material.dart';

import '../colores.dart';

class ChackBoxApp extends StatefulWidget {
  ChackBoxApp({Key? key, required this.onPress, this.selected = false})
      : super(key: key);
  bool selected;
  Function(bool) onPress;
  @override
  State<ChackBoxApp> createState() => _ChackBoxAppState();
}

class _ChackBoxAppState extends State<ChackBoxApp> {
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
                    color: bg,
                    size: 16,
                  ),
                )
              : null,
        ),
      ),
    );
  }
}
