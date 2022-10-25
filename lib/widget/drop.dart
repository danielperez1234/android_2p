import 'package:martha_flutter/constantes.dart';
import 'package:flutter/material.dart';

class dropBttn extends StatefulWidget {
  dropBttn({Key? key, required this.list, required this.onChange})
      : super(key: key);
  List<String> list;
  Function(String) onChange;
  @override
  State<dropBttn> createState() => _dropBttnState();
}

class _dropBttnState extends State<dropBttn> {
  String? value;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 50,
      decoration: BoxDecoration(
        color: white,
        border: Border(
            left: BorderSide(color: pink), bottom: BorderSide(color: pink)),
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
