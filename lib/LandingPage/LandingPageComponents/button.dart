import 'package:flutter/material.dart';

Widget buttonElevated() {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      elevation: 30,
      backgroundColor: const Color(0xffFFC00E),
    ),
    onPressed: () {},
    child: const Text(
      "Create a Note",
      style: TextStyle(color: Colors.black, fontSize: 20),
    ),
  );
}
