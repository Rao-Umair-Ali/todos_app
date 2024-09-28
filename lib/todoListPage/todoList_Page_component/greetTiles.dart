import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Widget greetTile() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
              width: 2, color: const Color.fromARGB(255, 29, 0, 107)),
          borderRadius: const BorderRadius.all(Radius.circular(20))),
      child: ListTile(
        title: const Text(
          "Welcome to Notes",
          style: TextStyle(
              color: Color.fromARGB(255, 66, 23, 139),
              fontSize: 25,
              fontWeight: FontWeight.bold),
        ),
        subtitle: const Text(
          "Have a great day",
          style:
              TextStyle(color: Color.fromARGB(255, 66, 23, 139), fontSize: 15),
        ),
        trailing: SizedBox(
          child: CircleAvatar(
            child: Image.asset(
              "assets/images/Illustration.png",
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    ),
  );
}
