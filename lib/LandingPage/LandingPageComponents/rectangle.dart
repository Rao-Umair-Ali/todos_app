import 'package:flutter/material.dart';

Widget rectangle() {
  return const SizedBox(
    height: 18,
    width: 56,
    child: DecoratedBox(
      decoration: BoxDecoration(
          boxShadow: [BoxShadow(color: Colors.white, blurRadius: 3)],
          color: Colors.amber,
          borderRadius: BorderRadius.all(Radius.circular(22))),
    ),
  );
}
