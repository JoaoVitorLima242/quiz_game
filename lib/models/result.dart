import 'package:quiz_game/models/quiz_question.dart';

class Result {
  const Result(this.chosenAnswer, this.rightAnswer, this.question);

  final String chosenAnswer;
  final String rightAnswer;
  final String question;
}

class Results {
  const Results(this.chosenAnswers, this.questions);

  final List<String> chosenAnswers;
  final List<QuizQuestion> questions;

  // Adicionar funcao que retorna os resultados
  List<Result> getFormattedResults() {
    List<Result> formattedResults = [];
  }
}
