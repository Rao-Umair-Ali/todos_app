import 'package:flutter/material.dart';

List<Map<String, String>> todoLists = [
  {"time": "7:30", "title": "Flutter", "description": "learning todo"},
  {"time": "7:30", "title": "Flutter", "description": "learning todo"},
  {"time": "7:30", "title": "Flutter", "description": "learning todo"},
  {"time": "7:30", "title": "Flutter", "description": "learning todo"},
  {"time": "7:30", "title": "Flutter", "description": "learning todo"},
  {"time": "7:30", "title": "Flutter", "description": "learning todo"}
];
Widget listViewCom() {
  return ListView.separated(
    scrollDirection: Axis.horizontal,
    itemCount: todoLists.length,
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
                "Time : ${todoLists[index]["time"]!}",
                style: const TextStyle(
                    color: Color.fromARGB(255, 66, 23, 139),
                    fontSize: 15,
                    fontWeight: FontWeight.w700),
              ),
              Text(
                todoLists[index]["title"]!,
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
                todoLists[index]["description"]!,
                style: const TextStyle(shadows: [
                  Shadow(
                    blurRadius: 1.0,
                    color: Color.fromARGB(255, 0, 0, 0),
                    offset: Offset(1.0, 1.0),
                  ),
                ], color: Color.fromARGB(255, 66, 23, 139), fontSize: 17),
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
  );
}
