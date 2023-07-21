import 'package:flutter/material.dart';
import 'package:quiz_game/custom_widgets/answer_button.dart';
import 'package:quiz_game/custom_widgets/custom_text.dart';
import 'package:quiz_game/data/questions.dart';
import 'package:quiz_game/custom_widgets/logo_image.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({
    super.key,
    required this.onSelectAnswer,
  });

  final void Function(String answer) onSelectAnswer;

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;

  void answeringQuestion(String selectedAnswer) {
    widget.onSelectAnswer(selectedAnswer);
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex];

    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const LogoImage(),
          const SizedBox(
            height: 40,
          ),
          CustomText(currentQuestion.text),
          const SizedBox(height: 30),
          ...currentQuestion.getShuffledAnswers().map(
                (answer) => Container(
                  margin: const EdgeInsets.only(top: 3, bottom: 3),
                  child: AnswerButton(
                    answerText: answer,
                    onPress: () => answeringQuestion(answer),
                  ),
                ),
              )
        ],
      ),
    );
  }
}
