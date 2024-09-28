import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Widget listTileAdd() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      decoration: BoxDecoration(
          border: Border.all(width: 2, color: Colors.white),
          borderRadius: const BorderRadius.all(Radius.circular(20))),
      child: ListTile(
        title: const Text(
          "My Task",
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
        trailing: SizedBox(
            child: IconButton(
                icon: const Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 30,
                ),
                onPressed: () {})),
      ),
    ),
  );
}
