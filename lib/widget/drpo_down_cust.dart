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
      width: 200,
      height: 50,
      decoration: BoxDecoration(
          color: dark,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
                color: gris.withOpacity(.2),
                offset: Offset(0, 10),
                blurRadius: 8)
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
          style: Ptextstyleregular(),
        )),
        items: widget.list
            .map((e) => DropdownMenuItem(
                  child: Center(
                      child: Text(
                    e,
                    style: Ptextstyleregular(),
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
