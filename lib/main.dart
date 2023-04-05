import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // int value = 1;

  // Random random = Random();
  // bool isRolling = false;
  // rollTheDice() async {
  //   setState(() {
  //     isRolling = true;
  //   });
  //   var timer = Timer.periodic(const Duration(milliseconds: 100), (timer) {
  //     value = random.nextInt(6);
  //     if (value == 0) {
  //       value = 1;
  //     }
  //     setState(() {});
  //   });
  //   await Future.delayed(const Duration(seconds: 3));
  //   timer.cancel();
  //   setState(() {
  //     isRolling = false;
  //   });
  //   // value = random.nextInt(6);
  //   // if (value == 0) {
  //   //   rollTheDice();
  //   // }
  //   // setState(() {});
  //   //print(value);
  // }

  // Camel Casing

  // playAudio() async {
  //   AudioPlayer player = await AudioPlayer();
  //   player.play(AssetSource('assets/audio/1.mp3'));
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text('Xylophone',
              style: GoogleFonts.pacifico(color: Colors.teal, fontSize: 30)),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            Node(
              color: Colors.red,
            ),
            Node(
              color: Colors.orange,
            ),
            Node(
              color: Colors.yellow,
            ),
            Node(
              color: Colors.green,
            ),
            Node(
              color: Colors.lightBlue,
            ),
            Node(
              color: Colors.blue,
            ),
            Node(
              color: Colors.indigo,
            ),
          ],
        )),
      ),
    );
  }
}

class Node extends StatelessWidget {
  const Node({super.key, required this.color});

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          color: color,
          height: 80,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              decoration: const BoxDecoration(
                  color: Colors.black, shape: BoxShape.circle),
              width: 30,
              height: 30,
            ),
            Container(
              decoration: const BoxDecoration(
                  color: Colors.black, shape: BoxShape.circle),
              width: 30,
              height: 30,
            )
          ],
        )
      ],
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


// git init -> Initialize the repository
// git add . -> To Stage or Add All the changes
// git push -> To send file to remote
// git pull -> To Fetch the changes

