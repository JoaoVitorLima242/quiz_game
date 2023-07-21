import 'package:collection/collection.dart';
import 'package:quiz_game/models/quiz_question.dart';

class Result {
  const Result({
    required this.chosenAnswer,
    required this.rightAnswer,
    required this.question,
    required this.orderNumber,
  });

  final int orderNumber;
  final String chosenAnswer;
  final String rightAnswer;
  final String question;
}

List<Result> getFormattedResults(
  List<String> chosenAnswers,
  List<QuizQuestion> questions,
) {
  List<Result> formattedResults = [];

  for (var i = 0; i < chosenAnswers.length; i++) {}
  chosenAnswers.forEachIndexed(
    (index, chosenAnswer) {
      Result? formattedResult;
      String rightAnswer = questions[index].answers[0];
      String question = questions[index].text;

      formattedResult = Result(
        chosenAnswer: chosenAnswer,
        rightAnswer: rightAnswer,
        question: question,
        orderNumber: index + 1,
      );

      formattedResults.add(formattedResult);
    },
  );

  return formattedResults;
}
