import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Widget addTextFields(String label, double heig, double wid) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: SizedBox(
      height: heig,
      width: wid,
      child: TextField(
        style: const TextStyle(color: Colors.white, fontSize: 25),
        decoration: InputDecoration(
            labelText: label,
            labelStyle: const TextStyle(color: Colors.white, fontSize: 17),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                  color: Colors.white, style: BorderStyle.solid, width: 2),
            ),
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                    color: Colors.white, style: BorderStyle.solid, width: 2))),
      ),
    ),
  );
}
