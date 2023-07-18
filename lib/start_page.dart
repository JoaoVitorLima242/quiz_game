import 'package:flutter/material.dart';

const BackgroundColor = Color(0xff54494b);

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  void onStartQuiz() {}

  @override
  Widget build(BuildContext context) {
    return Container(
      color: BackgroundColor,
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
              onPressed: onStartQuiz,
              child: const Text('Start Quiz'),
            )
          ],
        ),
      ),
    );
  }
}
