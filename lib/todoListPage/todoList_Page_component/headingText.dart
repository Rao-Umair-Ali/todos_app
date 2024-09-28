import 'package:flutter/material.dart';

Widget headingText() {
  return const Text(
    "My Priority Task",
    style: TextStyle(
      color: Colors.white,
      fontSize: 35,
      shadows: [
        Shadow(
          blurRadius: 5.0,
          color: Color.fromARGB(255, 255, 255, 255),
          offset: Offset(1.0, 1.0),
        ),
      ],
    ),
  );
}
