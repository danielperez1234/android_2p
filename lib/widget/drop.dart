import 'package:flutter/material.dart';

import '../colores.dart';

class DropDownApp extends StatefulWidget {
  DropDownApp({Key? key, required this.list, required this.onChange})
      : super(key: key);
  List<String> list;
  Function(String) onChange;
  @override
  State<DropDownApp> createState() => _DropDownAppState();
}

class _DropDownAppState extends State<DropDownApp> {
  String? value;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(color: bg, boxShadow: [
        BoxShadow(
            color: azulElectrico2.withOpacity(.2),
            offset: Offset(0, 5),
            blurRadius: 3)
      ]),
      child: DropdownButton(
        underline: Container(
          height: 60,
          width: 60,
          color: Colors.transparent,
        ),
        isExpanded: true,
        value: value,
        hint: Center(
            child: Text(
          "Escolaridad",
          style: textstylenormal(),
        )),
        items: widget.list
            .map((e) => DropdownMenuItem(
                  child: Center(
                      child: Text(
                    e,
                    style: textstylenormal(),
                  )),
                  value: e,
                ))
            .toList(),
        onChanged: (String? va) {
          widget.onChange(va!);
          value = va;
          setState(() {});
        },
      ),
    );
  }
}
