import 'package:flutter/material.dart';
import 'package:quiz_game/custom_widgets/number_cicle.dart';

const containerBackground = Color(0xfff1f7ed);
const rightColor = Color.fromARGB(255, 57, 207, 147);
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
    final formattedRightColor =
        rightAnswer == selectedAnswer ? rightColor : wrongColor;

    return Container(
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.all(8),
      decoration: const BoxDecoration(
        color: containerBackground,
        borderRadius: BorderRadius.all(Radius.circular(6)),
      ),
      child: Row(
        children: [
          NumberCicle(
            color: formattedRightColor,
            text: orderNumber.toString(),
          ),
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
