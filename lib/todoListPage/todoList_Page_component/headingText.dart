import 'package:flutter/material.dart';

Widget headingText(String text, double numb) {
  return Text(
    text,
    style: TextStyle(
      color: Colors.white,
      fontSize: numb,
      shadows: const [
        Shadow(
          blurRadius: 5.0,
          color: Color.fromARGB(255, 255, 255, 255),
          offset: Offset(1.0, 1.0),
        ),
      ],
    ),
  );
}
