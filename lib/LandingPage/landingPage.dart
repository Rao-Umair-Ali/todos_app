import 'package:flutter/material.dart';

import 'package:todos_app/todoListPage/todoListPage.dart';

class Landingpage extends StatelessWidget {
  const Landingpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(153, 0, 28, 168),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            const Expanded(
              flex: 2,
              child: Center(
                  child: Padding(
                padding: const EdgeInsets.only(left: 50, right: 10),
                child: const Text(
                  "Manage your daily To Do",
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.w400,
                    color: Color.fromARGB(255, 255, 255, 255),
                    shadows: [
                      Shadow(
                        blurRadius: 5.0,
                        color: Color.fromARGB(255, 255, 255, 255),
                        offset: Offset(1.0, 1.0),
                      ),
                    ],
                  ),
                ),
              )),
            ),
            Expanded(
              flex: 4,
              child: Image.asset(
                "assets/images/Illustration.png",
                fit: BoxFit.contain,
              ),
            ),
            const Expanded(
              flex: 1,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: 18,
                      width: 56,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(color: Colors.white, blurRadius: 3)
                            ],
                            color: Colors.amber,
                            borderRadius:
                                BorderRadius.all(Radius.circular(22))),
                      ),
                    ),
                    SizedBox(
                      height: 18,
                      width: 56,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(color: Colors.white, blurRadius: 3)
                            ],
                            color: Colors.amber,
                            borderRadius:
                                BorderRadius.all(Radius.circular(22))),
                      ),
                    ),
                    SizedBox(
                      height: 18,
                      width: 56,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(color: Colors.white, blurRadius: 3)
                            ],
                            color: Colors.amber,
                            borderRadius:
                                BorderRadius.all(Radius.circular(22))),
                      ),
                    )
                  ],
                ),
              ),
            ),
            const Expanded(
              flex: 2,
              child: Center(
                child: Padding(
                    padding: EdgeInsets.only(left: 45, right: 30),
                    child: Text(
                      "Without much worry just manage things as easy as piece of cake",
                      style: TextStyle(
                          shadows: [
                            Shadow(
                              blurRadius: 5.0,
                              color: Color.fromARGB(255, 255, 255, 255),
                              offset: Offset(1.0, 1.0),
                            ),
                          ],
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: Color.fromARGB(255, 255, 255, 255)),
                    )),
              ),
            ),
            Expanded(
              flex: 1,
              child: Center(
                  child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 30,
                  backgroundColor: const Color(0xffFFC00E),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Todolistpage()),
                  );
                },
                child: const Text(
                  "Create a Note",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              )),
            ),
          ],
        ),
      ),
    );
  }
}
