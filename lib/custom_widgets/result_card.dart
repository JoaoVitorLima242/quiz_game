import 'package:flutter/material.dart';
import 'package:quiz_game/custom_widgets/number_cicle.dart';

const containerBackground = Color(0xfff1f7ed);
const rightColor = Color(0xFF3FBB89);
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
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  questionText,
                  style: TextStyle(
                    color: formattedRightColor,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Text(
                  selectedAnswer,
                  style: const TextStyle(
                    color: Color(0xff54494B),
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  rightAnswer,
                  style: const TextStyle(
                    color: rightColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
