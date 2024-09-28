import 'package:flutter/material.dart';
import 'package:todos_app/LandingPage/landingPage.dart';
import 'package:todos_app/todoListPage/todoListPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Landingpage(),
    );
  }
}
