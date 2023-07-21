import 'package:flutter/material.dart';
import 'package:quiz_game/custom_widgets/custom_text.dart';
import 'package:quiz_game/custom_widgets/logo_image.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const LogoImage(height: 300),
          const Padding(
            padding: EdgeInsets.only(top: 50, bottom: 30),
            child: CustomText(
              'Learn Flutter the fun way!',
              fontSize: 26,
            ),
          ),
          Directionality(
            textDirection: TextDirection.rtl,
            child: ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff91c7b1),
                padding: const EdgeInsets.symmetric(
                  vertical: 12.0,
                  horizontal: 20.00,
                ),
              ),
              onPressed: startQuiz,
              icon: const Icon(Icons.arrow_right_alt),
              label: const CustomText(
                'Start Quiz',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
