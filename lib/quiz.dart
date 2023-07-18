import 'package:flutter/material.dart';
import 'package:quiz_game/questions_screen.dart';
import 'package:quiz_game/start_screen.dart';

const backgroundColor = Color(0xff54494b);

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  Widget? activeScreen;

  @override
  void initState() {
    activeScreen = StartScreen(switchScreen);
    super.initState();
  }

  void switchScreen() {
    setState(() {
      activeScreen = const QuestionsScreen();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          color: backgroundColor,
          child: activeScreen,
        ),
      ),
    );
  }
}