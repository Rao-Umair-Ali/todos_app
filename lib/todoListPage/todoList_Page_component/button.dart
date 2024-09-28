import 'package:flutter/material.dart';

Widget buttonsElevated(name) {
  return ConstrainedBox(
    constraints: const BoxConstraints(maxHeight: 90),
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 30,
        backgroundColor: const Color.fromARGB(255, 66, 23, 139),
      ),
      onPressed: () {},
      child: Text(
        name,
        style: const TextStyle(color: Colors.white, fontSize: 12),
      ),
    ),
  );
}
