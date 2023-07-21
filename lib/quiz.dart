import 'package:flutter/material.dart';
import 'package:quiz_game/data/questions.dart';
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
  List<String> selectedAnswer = [];

  @override
  void initState() {
    activeScreen = StartScreen(switchScreen);
    super.initState();
  }

  void switchScreen() {
    setState(() {
      activeScreen = QuestionsScreen(
        onSelectAnswer: selectAnswer,
      );
    });
  }

  void selectAnswer(String asnwer) {
    selectedAnswer.add(asnwer);

    if (selectedAnswer.length == questions.length) {
      setState(() {
        activeScreen = StartScreen(switchScreen);
      });
      selectedAnswer.clear();
    }
    print(selectedAnswer);
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
