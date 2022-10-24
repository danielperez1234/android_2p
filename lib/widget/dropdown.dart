import 'package:android_2p/styles.dart';
import 'package:flutter/material.dart';

class dropBtn extends StatefulWidget {
  dropBtn({Key? key, required this.list, required this.onChange})
      : super(key: key);
  List<String> list;
  Function(String) onChange;
  @override
  State<dropBtn> createState() => _dropBtnState();
}

class _dropBtnState extends State<dropBtn> {
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
          style: textstyle(),
        )),
        items: widget.list
            .map((e) => DropdownMenuItem(
                  child: Center(
                      child: Text(
                    e,
                    style: textstyle(),
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
