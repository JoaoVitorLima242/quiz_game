import 'package:flutter/material.dart';
import 'package:quiz_game/custom_widgets/Custom_icon_button.dart';
import 'package:quiz_game/custom_widgets/custom_text.dart';
import 'package:quiz_game/custom_widgets/result_card.dart';
import 'package:quiz_game/data/questions.dart';
import 'package:quiz_game/models/result.dart';

class ResultScreen extends StatelessWidget {
  ResultScreen({
    required this.onRestartQuiz,
    required this.results,
    super.key,
  });

  final void Function() onRestartQuiz;
  final List<Result> results;

  final questionsLength = questions.length;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 40),
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomText(
                'You answered X out $questionsLength questions correctly!',
              ),
              const SizedBox(height: 30),
              ...results.map(
                (result) => ResultCard(
                  orderNumber: result.orderNumber,
                  questionText: result.question,
                  selectedAnswer: result.chosenAnswer,
                  rightAnswer: result.rightAnswer,
                ),
              ),
              const SizedBox(height: 30),
              CustomIconButton(
                icon: const Icon(Icons.replay_outlined),
                label: "Restart Quiz",
                onPressed: onRestartQuiz,
              )
            ],
          ),
        ),
      ),
    );
  }
}
