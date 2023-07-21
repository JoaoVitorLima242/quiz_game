import 'package:flutter/material.dart';
import 'package:quiz_game/data/questions.dart';
import 'package:quiz_game/models/result.dart';
import 'package:quiz_game/screens/questions_screen.dart';
import 'package:quiz_game/screens/result_screen.dart';
import 'package:quiz_game/screens/start_screen.dart';

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
        activeScreen = ResultScreen(
          onRestartQuiz: restartQuiz,
          results: getFormattedResults(selectedAnswer, questions),
        );
      });
    }
  }

  void restartQuiz() {
    setState(() {
      activeScreen = activeScreen = StartScreen(switchScreen);
    });
    selectedAnswer.clear();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          color: backgroundColor,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: activeScreen,
          ),
        ),
      ),
    );
  }
}
