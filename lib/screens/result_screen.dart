import 'package:flutter/material.dart';
import 'package:quiz_game/custom_widgets/custom_text.dart';
import 'package:quiz_game/data/questions.dart';

class ResultScreen extends StatelessWidget {
  ResultScreen({super.key});

  final questionsLength = questions.length;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomText(
            'You answered X out $questionsLength questions correctly!',
          ),
          const SizedBox(height: 30),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}
