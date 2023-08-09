import 'package:flutter/material.dart';
import 'dart:math';

class DartRoller extends StatefulWidget {
  const DartRoller({super.key});
  @override
  State<DartRoller> createState() {
    return _DartRoller();
  }
}

class _DartRoller extends State<DartRoller> {
  late String imagename = "assets/images/dice-1.png";

  void roll() {
    var v = Random().nextInt(6) + 1;
    setState(() {
      imagename = "assets/images/dice-$v.png";
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Image(image: Image.asset("")),
        Image.asset(
          imagename,
          width: MediaQuery.sizeOf(context).width,
          height: 200,
        ),
        TextButton(
          onPressed: () => roll(),
          style: TextButton.styleFrom(
              elevation: 20,
              padding: const EdgeInsets.only(top: 20),
              textStyle: const TextStyle(
                  fontSize: 23,
                  color: const Color.fromARGB(255, 255, 255, 255),
                  fontWeight: FontWeight.bold)),
          child: Text(
            "Roll Dice",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }
}
