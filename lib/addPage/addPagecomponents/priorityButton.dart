import 'package:flutter/material.dart';

Widget priorityButton({required String name, colorName}) {
  return ConstrainedBox(
    constraints: const BoxConstraints(maxHeight: 120),
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 30,
        backgroundColor: colorName,
      ),
      onPressed: () {},
      child: Text(
        name,
        style: const TextStyle(color: Colors.white, fontSize: 15),
      ),
    ),
  );
}
