import 'package:flutter/material.dart';
import 'package:todos_app/todoListPage/todoListPage.dart';

Widget buttonElevated(context) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      elevation: 30,
      backgroundColor: const Color(0xffFFC00E),
    ),
    onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const Todolistpage()),
      );
    },
    child: const Text(
      "Create a Note",
      style: TextStyle(color: Colors.black, fontSize: 20),
    ),
  );
}
