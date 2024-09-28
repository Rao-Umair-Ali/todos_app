import 'package:flutter/material.dart';

Widget text2() {
  return const Text(
    "Without much worry just manage things as easy as piece of cake",
    style: TextStyle(
        shadows: [
          Shadow(
            blurRadius: 5.0,
            color: Color.fromARGB(255, 255, 255, 255),
            offset: Offset(1.0, 1.0),
          ),
        ],
        fontSize: 20,
        fontWeight: FontWeight.w400,
        color: Color.fromARGB(255, 255, 255, 255)),
  );
}

Widget text1() {
  return const Text(
    "Manage your daily To Do",
    style: TextStyle(
      fontSize: 50,
      fontWeight: FontWeight.w400,
      color: Color.fromARGB(255, 255, 255, 255),
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
