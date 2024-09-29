import 'package:flutter/material.dart';
import 'package:todos_app/todoListPage/todoList_Page_component/button.dart';
import 'package:todos_app/todoListPage/todoList_Page_component/greetTiles.dart';
import 'package:todos_app/todoListPage/todoList_Page_component/headingText.dart';
import 'package:todos_app/todoListPage/todoList_Page_component/listTilesAdd.dart';
import 'package:todos_app/todoListPage/todoList_Page_component/listViewTask.dart';
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
              flex: 2,
              child: greetTile(),
            ),
            Expanded(
              flex: 1,
              child: headingText("My priority Task", 35),
            ),
            Expanded(
              flex: 2,
              child: listViewCom(),
            ),
            Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  listTileAdd(context),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      buttonsElevated("Today's Task"),
                      buttonsElevated("Weekly Task"),
                      buttonsElevated("Monthly Task")
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 5,
              child: listViewTask(),
            ),
          ],
        ));
  }
}
