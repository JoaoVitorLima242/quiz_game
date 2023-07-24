import 'package:flutter/material.dart';

const containerBackground = Color(0xfff1f7ed);
const rightColor = Color.fromARGB(255, 36, 145, 101);
const wrongColor = Color(0xffB33951);

class ResultCard extends StatelessWidget {
  const ResultCard({
    super.key,
    required this.orderNumber,
    required this.questionText,
    required this.selectedAnswer,
    required this.rightAnswer,
  });

  final int orderNumber;
  final String questionText, selectedAnswer, rightAnswer;

  @override
  Widget build(BuildContext context) {
    final bool isCorrectAnswer = rightAnswer == selectedAnswer;

    return Container(
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.all(8),
      decoration: const BoxDecoration(
        color: containerBackground,
        borderRadius: BorderRadius.all(Radius.circular(6)),
      ),
      child: Row(
        children: [
          Text(orderNumber.toString()),
          Column(
            children: [
              Text(questionText),
              Text(selectedAnswer),
              Text(rightAnswer),
            ],
          ),
        ],
      ),
    );
  }
}
