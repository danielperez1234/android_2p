import 'package:android_2p/constantes.dart';
import 'package:flutter/material.dart';

class AppDropDown extends StatefulWidget {
  AppDropDown({Key? key, required this.list, required this.onChange})
      : super(key: key);
  List<String> list;
  Function(String) onChange;
  @override
  State<AppDropDown> createState() => _AppDropDownState();
}

class _AppDropDownState extends State<AppDropDown> {
  String? value;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(color: dark, boxShadow: [
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
