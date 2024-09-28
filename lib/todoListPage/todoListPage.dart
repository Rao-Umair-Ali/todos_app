import 'package:flutter/material.dart';
import 'package:todos_app/todoListPage/todoList_Page_component/greetTiles.dart';
import 'package:todos_app/todoListPage/todoList_Page_component/headingText.dart';
import 'package:todos_app/todoListPage/todoList_Page_component/listviewcom.dart';

class Todolistpage extends StatefulWidget {
  const Todolistpage({super.key});

  @override
  State<Todolistpage> createState() => _TodolistpageState();
}

class _TodolistpageState extends State<Todolistpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(153, 0, 28, 168),
        body: Column(
          children: [
            Expanded(
              flex: 1,
              child: greetTile(),
            ),
            Expanded(
              flex: 1,
              child: headingText(),
            ),
            Expanded(
              flex: 1,
              child: listViewCom(),
            ),
            Expanded(
              flex: 3,
              child: headingText(),
            ),
          ],
        ));
  }
}
