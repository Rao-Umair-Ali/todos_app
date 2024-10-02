import 'package:flutter/material.dart';
import 'package:todos_app/addPage/addPage.dart';

class Todolistpage extends StatefulWidget {
  const Todolistpage({super.key});

  @override
  State<Todolistpage> createState() => _TodolistpageState();
}

class _TodolistpageState extends State<Todolistpage> {
  List<Map<String, String>> highPriorityList = [];
  add(a, b, c, d, e) {
    highPriorityList.add({
      "timeFrom": a,
      "timeTo": b,
      "title": c,
      "description": d,
      "priority": e
    });
    setState(() {});
  }

  int indexNo = 0;
  edit(newA, newB, newC, newD, newE, prio, index, List highpriority) {
    indexNo = index;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(153, 0, 28, 168),
        body: Column(
          children: [
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                          width: 2,
                          color: const Color.fromARGB(255, 29, 0, 107)),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(20))),
                  child: ListTile(
                    title: const Text(
                      "Welcome to Notes",
                      style: TextStyle(
                          color: Color.fromARGB(255, 66, 23, 139),
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    subtitle: const Text(
                      "Have a great day",
                      style: TextStyle(
                          color: Color.fromARGB(255, 66, 23, 139),
                          fontSize: 15),
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
            const Expanded(
              flex: 1,
              child: Text(
                "High priority Task",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                  shadows: [
                    Shadow(
                      blurRadius: 5.0,
                      color: Color.fromARGB(255, 255, 255, 255),
                      offset: Offset(1.0, 1.0),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
                flex: 2,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: highPriorityList
                      .where((task) => task["priority"] == "high")
                      .length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 100,
                        width: 150,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              width: 3,
                              color: const Color.fromARGB(255, 66, 23, 139),
                              style: BorderStyle.solid,
                            )),
                        child: Column(
                          children: [
                            Text(
                              "From : ${highPriorityList[index]["timeFrom"]!}",
                              style: const TextStyle(
                                  color: Color.fromARGB(255, 66, 23, 139),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700),
                            ),
                            Text(
                              "To : ${highPriorityList[index]["timeTo"]!}",
                              style: const TextStyle(
                                  color: Color.fromARGB(255, 66, 23, 139),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700),
                            ),
                            Text(
                              highPriorityList[index]["title"]!,
                              style: const TextStyle(
                                  shadows: [
                                    Shadow(
                                      blurRadius: 1.0,
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      offset: Offset(1.0, 1.0),
                                    ),
                                  ],
                                  color: Color.fromARGB(255, 66, 23, 139),
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              highPriorityList[index]["description"]!,
                              style: const TextStyle(
                                  shadows: [
                                    Shadow(
                                      blurRadius: 1.0,
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      offset: Offset(1.0, 1.0),
                                    ),
                                  ],
                                  color: Color.fromARGB(255, 66, 23, 139),
                                  fontSize: 17),
                            ),
                            const Icon(
                              Icons.work,
                              color: Colors.red,
                            )
                          ],
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      width: 0,
                    );
                  },
                )),
            Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: ListTile(
                        title: const Text(
                          "My Task",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
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
                              MaterialPageRoute(
                                  builder: (context) => AddPage(
                                        sss: add,
                                        eee: edit,
                                      )),
                            );
                          },
                        )),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ConstrainedBox(
                        constraints: const BoxConstraints(maxHeight: 120),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            elevation: 30,
                            backgroundColor:
                                const Color.fromARGB(255, 66, 23, 139),
                          ),
                          onPressed: () {},
                          child: const Text(
                            "Today's Task",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                        ),
                      ),
                      ConstrainedBox(
                        constraints: const BoxConstraints(maxHeight: 120),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            elevation: 30,
                            backgroundColor:
                                const Color.fromARGB(255, 66, 23, 139),
                          ),
                          onPressed: () {},
                          child: const Text(
                            "Weekly Task",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                        ),
                      ),
                      ConstrainedBox(
                        constraints: const BoxConstraints(maxHeight: 120),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            elevation: 30,
                            backgroundColor:
                                const Color.fromARGB(255, 66, 23, 139),
                          ),
                          onPressed: () {},
                          child: const Text(
                            "Monthly Task",
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
              flex: 5,
              child: ListView.separated(
                itemCount: highPriorityList.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 130,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            width: 3,
                            color: const Color.fromARGB(255, 66, 23, 139),
                            style: BorderStyle.solid,
                          )),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Text(
                                "From : ${highPriorityList[index]["timeFrom"]!}",
                                style: const TextStyle(
                                    color: Color.fromARGB(255, 66, 23, 139),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700),
                              ),
                              Text(
                                "To : ${highPriorityList[index]["timeTo"]!}",
                                style: const TextStyle(
                                    color: Color.fromARGB(255, 66, 23, 139),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700),
                              ),
                              Text(
                                highPriorityList[index]["title"]!,
                                style: const TextStyle(
                                    shadows: [
                                      Shadow(
                                        blurRadius: 1.0,
                                        color: Color.fromARGB(255, 0, 0, 0),
                                        offset: Offset(1.0, 1.0),
                                      ),
                                    ],
                                    color: Color.fromARGB(255, 66, 23, 139),
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                highPriorityList[index]["description"]!,
                                style: const TextStyle(
                                    shadows: [
                                      Shadow(
                                        blurRadius: 1.0,
                                        color: Color.fromARGB(255, 0, 0, 0),
                                        offset: Offset(1.0, 1.0),
                                      ),
                                    ],
                                    color: Color.fromARGB(255, 66, 23, 139),
                                    fontSize: 17),
                              ),
                              if (highPriorityList[index]["priority"] == "low")
                                const Icon(
                                  Icons.work,
                                  color: Colors.green,
                                )
                              else if (highPriorityList[index]["priority"] ==
                                  "medium")
                                const Icon(
                                  Icons.work,
                                  color: Colors.blue,
                                )
                              else
                                const Icon(
                                  Icons.work,
                                  color: Colors.red,
                                )
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => AddPage(
                                                sss: add,
                                                eee: edit,
                                              )),
                                    );
                                  },
                                  icon: const Icon(
                                    Icons.edit,
                                    color: Color.fromARGB(255, 66, 23, 139),
                                  )),
                              IconButton(
                                  onPressed: () {
                                    setState(() {
                                      highPriorityList.removeAt(index);
                                    });
                                  },
                                  icon: const Icon(
                                    Icons.delete,
                                    color: Color.fromARGB(255, 66, 23, 139),
                                  ))
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(
                    width: 0,
                  );
                },
              ),
            ),
          ],
        ));
  }
}
