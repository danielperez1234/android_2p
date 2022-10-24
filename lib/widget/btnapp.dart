import 'package:android_2p/styles.dart';
import 'package:flutter/material.dart';

class btn2 extends StatefulWidget {
  btn2(
      {Key? key,
      required this.onPressed,
      required this.text,
      this.height,
      this.width,
      this.color = amarillo})
      : super(key: key);
  Function() onPressed;
  String text;
  double? height;
  double? width;
  Color color;
  @override
  State<btn2> createState() => _btn2State();
}

class _btn2State extends State<btn2> {
  @override
  void initState() {
    // TODO: implement initState

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var Psize = MediaQuery.of(context).size;
    return Container(
      height: widget.height ?? 40,
      width: widget.width ?? Psize.width / 1.875,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            color: gris.withOpacity(.2), offset: Offset(0, 10), blurRadius: 8)
      ], borderRadius: BorderRadius.circular(10)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: MaterialButton(
          onPressed: widget.onPressed,
          color: widget.color,
          hoverColor: widget.color.withAlpha(50),
          splashColor: widget.color.withAlpha(50),

          /*onTapDown: (s) {
            setState(() {
              widget.color = widget.color.withAlpha(125);
            });
          },
          onTapCancel: () {
            widget.color = widget.color.withAlpha(255);

            setState(() {});
          },
          onTapUp: (s) {
            widget.color = widget.color.withAlpha(255);
            setState(() {});
          },*/
          child: Container(
            /*curve: Curves.easeInCirc,
            duration: Duration(milliseconds: 70),*/

            child: Center(
                child: Text(
              widget.text.toUpperCase(),
              style: textG(color: dark),
            )),
          ),
        ),
      ),
    );
  }
}
