import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int value = 1;

  Random random = Random();
  bool isRolling = false;
  rollTheDice() async {
    setState(() {
      isRolling = true;
    });
    var timer = Timer.periodic(const Duration(milliseconds: 100), (timer) {
      value = random.nextInt(6);
      if (value == 0) {
        value = 1;
      }
      setState(() {});
    });
    await Future.delayed(const Duration(seconds: 4));
    timer.cancel();
    setState(() {
      isRolling = false;
    });
    // value = random.nextInt(6);
    // if (value == 0) {
    //   rollTheDice();
    // }
    // setState(() {});
    //print(value);
  }

  // Camel Casing
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text(
            'Roll The Dice',
            style: TextStyle(
              fontSize: 25,
            ),
          ),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              isRolling ? "Rolling Dice" : "Value you got is $value",
              style: const TextStyle(color: Colors.white, fontSize: 30),
            ),
            TextButton(
              onPressed: () {
                rollTheDice();
              },
              child: Image(
                image: AssetImage('assets/images/$value.png'),
                height: 250,
                width: 250,
              ),
            ),
          ],
        )),
      ),
    );
  }
}

// 3 Types of Applications
// Material App  // Android - Google Design
// Cupertino App // iOS - Apple Design
// Widget App  // Raw App

// 2 Types of Widget
// Stateless Widget -> Movement Changes
// Stateful Widget  -> User Interaction -> Changes
