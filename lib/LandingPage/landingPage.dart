import 'package:flutter/material.dart';
import 'package:todos_app/LandingPage/LandingPageComponents/button.dart';
import 'package:todos_app/LandingPage/LandingPageComponents/rectangle.dart';
import 'package:todos_app/LandingPage/LandingPageComponents/text.dart';

class Landingpage extends StatelessWidget {
  const Landingpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(153, 32, 55, 173),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Expanded(
              flex: 2, // Takes 2 parts of the available space
              child: Center(
                  child: Padding(
                padding: const EdgeInsets.only(left: 50, right: 10),
                child: text1(),
              )), // Title Text
            ),
            Expanded(
              flex: 4, // Takes 4 parts of the available space
              child: Image.asset(
                "assets/images/Illustration.png",
                fit: BoxFit.contain,
              ),
            ),
            Expanded(
              flex: 1,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [rectangle(), rectangle(), rectangle()],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Center(
                  child: Padding(
                      padding: const EdgeInsets.only(left: 45, right: 30),
                      child: text2())), // Description Text
            ),
            Expanded(
              flex: 1,
              child: Center(child: buttonElevated()), // Button
            ),
          ],
        ),
      ),
    );
  }
}
