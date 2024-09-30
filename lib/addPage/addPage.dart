import 'dart:math';
import 'dart:ui';
import 'package:flutter/material.dart';

class AddPage extends StatefulWidget {
  AddPage({
    super.key,
    required this.sss,
    this.task,
    this.index,
  });

  Map<String, String>? task;
  int? index;
  Function(dynamic a, dynamic b, dynamic c, dynamic d, dynamic prio) sss;

  @override
  State<AddPage> createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  TextEditingController afield = TextEditingController();
  TextEditingController bfield = TextEditingController();
  TextEditingController cfield = TextEditingController();
  TextEditingController dfield = TextEditingController();
  String priorityval = "";
  bool press = true;
  @override
  void initState() {
    super.initState();
    if (widget.task != null) {
      afield.text = widget.task!["timeFrom"]!;
      bfield.text = widget.task!["timeTo"]!;
      cfield.text = widget.task!["title"]!;
      dfield.text = widget.task!["description"]!;
      priorityval = widget.task!["priority"]!;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(153, 0, 28, 168),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      width: 2,
                      color: const Color.fromARGB(255, 29, 0, 107),
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                  ),
                  child: ListTile(
                    title: const Text(
                      "Welcome to Notes",
                      style: TextStyle(
                        color: Color.fromARGB(255, 66, 23, 139),
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
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
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      height: 50,
                      width: 100,
                      child: TextField(
                        controller: afield,
                        style:
                            const TextStyle(color: Colors.white, fontSize: 25),
                        decoration: const InputDecoration(
                          labelText: "From",
                          labelStyle:
                              TextStyle(color: Colors.white, fontSize: 14),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                              style: BorderStyle.solid,
                              width: 2,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                              style: BorderStyle.solid,
                              width: 2,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      height: 50,
                      width: 100,
                      child: TextField(
                        controller: bfield,
                        style:
                            const TextStyle(color: Colors.white, fontSize: 25),
                        decoration: const InputDecoration(
                          labelText: "To",
                          labelStyle:
                              TextStyle(color: Colors.white, fontSize: 17),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                              style: BorderStyle.solid,
                              width: 2,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                              style: BorderStyle.solid,
                              width: 2,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 4,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      height: 70,
                      width: 400,
                      child: TextField(
                        controller: cfield,
                        style:
                            const TextStyle(color: Colors.white, fontSize: 25),
                        decoration: const InputDecoration(
                          labelText: "Title",
                          labelStyle:
                              TextStyle(color: Colors.white, fontSize: 17),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                              style: BorderStyle.solid,
                              width: 2,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                              style: BorderStyle.solid,
                              width: 2,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      height: 200,
                      width: 400,
                      child: TextField(
                        controller: dfield,
                        selectionHeightStyle:
                            BoxHeightStyle.includeLineSpacingTop,
                        style:
                            const TextStyle(color: Colors.white, fontSize: 25),
                        decoration: const InputDecoration(
                          labelText: "Description",
                          labelStyle:
                              TextStyle(color: Colors.white, fontSize: 17),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                              style: BorderStyle.solid,
                              width: 2,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                              style: BorderStyle.solid,
                              width: 2,
                            ),
                          ),
                        ),
                        maxLines: null,
                      ),
                    ),
                  ),
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
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ConstrainedBox(
                        constraints: BoxConstraints(maxHeight: 120),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            elevation: 30,
                            backgroundColor: Colors.red,
                          ),
                          onPressed: () {
                            priorityval = "high";
                            print(priorityval);
                          },
                          child: const Text(
                            "high",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                        ),
                      ),
                      ConstrainedBox(
                        constraints: const BoxConstraints(maxHeight: 120),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            elevation: 30,
                            backgroundColor: Colors.blue,
                          ),
                          onPressed: () {
                            priorityval = "medium";
                            print(priorityval);
                          },
                          child: const Text(
                            "medium",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                        ),
                      ),
                      ConstrainedBox(
                        constraints: const BoxConstraints(maxHeight: 120),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            elevation: 30,
                            backgroundColor: Colors.green,
                          ),
                          onPressed: () {
                            priorityval = "low";
                            print(priorityval);
                          },
                          child: const Text(
                            "low",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  const SizedBox(height: 100),
                  Container(
                    child: SizedBox(
                      height: 50,
                      width: 400,
                      child: ElevatedButton(
                        onPressed: () {
                          if (afield.text != "" &&
                              bfield.text != "" &&
                              cfield.text != "" &&
                              dfield.text != "" &&
                              priorityval != "") {
                            String aafield = afield.text;
                            String bbfield = bfield.text;
                            String ccfield = cfield.text;
                            String ddfield = dfield.text;
                            String eefield = priorityval;
                            press == true;
                            setState(() {
                              widget.sss(
                                  aafield, bbfield, ccfield, ddfield, eefield);
                            });
                            Navigator.pop(context);
                          } else {
                            press = false;
                            afield.clear();
                            bfield.clear();
                            cfield.clear();
                            dfield.clear();
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          foregroundColor:
                              const Color.fromARGB(255, 66, 23, 139),
                        ),
                        child: const Text(
                          "Add",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
