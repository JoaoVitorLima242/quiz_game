import 'package:flutter/material.dart';
import 'package:quiz_game/answer_button.dart';
import 'package:quiz_game/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;

  void answeringQuestion() {
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              'images/quiz-logo.png',
              height: 200,
              color: const Color.fromARGB(150, 255, 255, 255),
            ),
            const SizedBox(
              height: 40,
            ),
            Text(
              currentQuestion.text,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 30),
            ...currentQuestion.getShuffledAnswers().map(
                  (answer) => Container(
                    margin: const EdgeInsets.only(top: 3, bottom: 3),
                    child: AnswerButton(
                      answerText: answer,
                      onPress: answeringQuestion,
                    ),
                  ),
                )
          ],
        ),
      ),
    );
  }
}
