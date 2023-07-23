import 'package:flutter/material.dart';

const containerBackground = Color(0xfff1f7ed);

class ResultCard extends StatelessWidget {
  const ResultCard({
    super.key,
    required this.orderNumber,
    required this.questionText,
    required this.selectedAnswer,
    required this.rightAnswer,
  });

  final int orderNumber;
  final String questionText;
  final String selectedAnswer;
  final String rightAnswer;

  @override
  Widget build(BuildContext context) {
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
