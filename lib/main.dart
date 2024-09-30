import 'package:flutter/material.dart';
import 'package:todos_app/LandingPage/landingPage.dart';
import 'package:todos_app/addPage/addPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  List asb = [];
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Landingpage(),
    );
  }
}
