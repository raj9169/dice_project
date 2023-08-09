import 'package:dice_project/dice_roller.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 67, 73, 255),
              Color.fromARGB(166, 8, 140, 255),
              Color.fromARGB(255, 24, 36, 88),
            ], begin: Alignment.topLeft, end: Alignment.topCenter),
          ),
          child: const Center(
            child: DartRoller(),
          ),
        ),
      ),
    );
  }
}
