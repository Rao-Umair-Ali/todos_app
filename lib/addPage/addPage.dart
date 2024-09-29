import 'package:flutter/material.dart';
import 'package:todos_app/addPage/addPagecomponents/addPagelistTile.dart';
import 'package:todos_app/addPage/addPagecomponents/addTextField.dart';
import 'package:todos_app/addPage/addPagecomponents/priorityButton.dart';

class AddPage extends StatefulWidget {
  const AddPage({super.key});

  @override
  State<AddPage> createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(153, 0, 28, 168),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(flex: 1, child: addPagetile()),
            Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    addTextFields("From", 50, 100),
                    addTextFields("To", 50, 100),
                  ],
                )),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  addTextFields("Title", 70, 400),
                  addTextFields("Title", 70, 400)
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  const Text(
                    "Choose Priority",
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      priorityButton(name: "High", colorName: Colors.red),
                      priorityButton(name: "Medium", colorName: Colors.blue),
                      priorityButton(name: "Low", colorName: Colors.green)
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
                flex: 2,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 100,
                    ),
                    Container(
                      child: SizedBox(
                        height: 50,
                        width: 400,
                        child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              foregroundColor:
                                  const Color.fromARGB(255, 66, 23, 139),
                            ),
                            child: const Text(
                              "Add",
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold),
                            )),
                      ),
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
