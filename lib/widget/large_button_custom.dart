import 'package:android_2p/constantes.dart';
import 'package:flutter/material.dart';

class PButtonLArgeCustom extends StatefulWidget {
  PButtonLArgeCustom({
    Key? key,
    required this.onPressed,
    required this.text,
  }) : super(key: key);
  Function() onPressed;
  String text;
  final Color color = Pnaranja;
  @override
  State<PButtonLArgeCustom> createState() => _PButtonLArgeCustomState();
}

class _PButtonLArgeCustomState extends State<PButtonLArgeCustom> {
  @override
  void initState() {
    // TODO: implement initState

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var Psize = MediaQuery.of(context).size;
    return Container(
      height: 40,
      width: Psize.width / 1.875,
      child: MaterialButton(
        onPressed: widget.onPressed,
        color: widget.color,
        hoverColor: widget.color.withAlpha(50),
        splashColor: widget.color.withAlpha(50),
        child: Container(
          child: Center(
              child: Text(
            widget.text.toUpperCase(),
            style: PtextstyleButton(),
          )),
        ),
      ),
    );
  }
}
