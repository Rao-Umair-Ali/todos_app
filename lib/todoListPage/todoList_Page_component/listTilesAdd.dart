import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:todos_app/addPage/addPage.dart';

Widget listTileAdd(context) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      child: ListTile(
        title: const Text(
          "My Task",
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
        ),
        trailing: SizedBox(
            child: IconButton(
          icon: const Icon(
            Icons.add,
            color: Color.fromARGB(255, 255, 255, 255),
            size: 40,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const AddPage()),
            );
          },
        )),
      ),
    ),
  );
}
