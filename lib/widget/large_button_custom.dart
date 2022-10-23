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
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            color: azulElectrico.withOpacity(.3),
            spreadRadius: 5,
            blurRadius: 5)
      ], borderRadius: BorderRadius.circular(20)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: RawMaterialButton(
          onPressed: widget.onPressed,
          fillColor: dark,
          hoverColor: azulElectrico2.withOpacity(.5),
          splashColor: azulElectrico2.withOpacity(.5),
          child: Container(
            decoration: BoxDecoration(
              gradient: electricoGradient(),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
                child: Text(
              widget.text,
              style: PtextstyleButton(color: dark, size: 20),
            )),
          ),
        ),
      ),
    );
  }
}
