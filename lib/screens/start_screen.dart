import 'package:flutter/material.dart';
import 'package:quiz_game/custom_widgets/custom_text.dart';
import 'package:quiz_game/custom_widgets/custom_icon_button.dart';
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
          CustomIconButton(
            icon: const Icon(Icons.arrow_right_alt),
            onPressed: startQuiz,
            label: 'Start Quiz',
          ),
        ],
      ),
    );
  }
}
