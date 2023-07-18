import 'package:flutter/material.dart';
import 'package:quiz_game/start_screen.dart';

const backgroundColor = Color(0xff54494b);

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          color: backgroundColor,
          child: const StartScreen(),
        ),
      ),
    );
  }
}
