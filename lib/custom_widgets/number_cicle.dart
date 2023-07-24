import 'package:flutter/material.dart';
import 'package:quiz_game/custom_widgets/custom_text.dart';

class NumberCicle extends StatelessWidget {
  const NumberCicle({
    super.key,
    required this.color,
    required this.text,
  });

  final Color color;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
      child: Center(
        child: CustomText(text),
      ),
    );
  }
}
