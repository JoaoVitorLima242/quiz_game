import 'package:flutter/material.dart';

const backgroundColor = Color(0xff54494b);

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  void onStartQuiz() {}

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'images/quiz-logo.png',
              width: 300,
            ),
            const Padding(
              padding: EdgeInsets.only(top: 50, bottom: 30),
              child: Text(
                'Learn Flutter the fun way!',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 26,
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff91c7b1),
                padding: const EdgeInsets.symmetric(
                  vertical: 12.0,
                  horizontal: 20.00,
                ),
              ),
              onPressed: onStartQuiz,
              child: const Text(
                'Start Quiz',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
