class QuizModel {
  final String question;
  final List<String> options;
  final int correctIndex;
  final String feedback;

  const QuizModel({
    required this.question,
    required this.correctIndex,
    required this.feedback,
    required this.options,
  });
}
