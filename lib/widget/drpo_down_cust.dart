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
        color: Pblanco,
        border: Border(
            left: BorderSide(color: Pnaranja),
            bottom: BorderSide(color: Pnaranja)),
      ),
      child: DropdownButton(
        underline: Container(
          height: 60,
          width: 60,
          color: Colors.transparent,
        ),
        isExpanded: true,
        value: value,
        hint: Center(child: Text("Escolaridad")),
        items: widget.list
            .map((e) => DropdownMenuItem(
                  child: Center(child: Text(e)),
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
