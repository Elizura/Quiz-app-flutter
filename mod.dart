class QuizQuestion {
  final int id;
  final String question;
  final String? description;
  final Map<String, String?> answers;
  final bool multipleCorrectAnswers;
  final Map<String, bool> correctAnswers;
  final String correctAnswer;
  final String? explanation;
  final String? tip;
  final List<Tag> tags;
  final String category;
  final String difficulty;

  QuizQuestion({
    required this.id,
    required this.question,
    this.description,
    required this.answers,
    required this.multipleCorrectAnswers,
    required this.correctAnswers,
    required this.correctAnswer,
    this.explanation,
    this.tip,
    required this.tags,
    required this.category,
    required this.difficulty,
  });

  factory QuizQuestion.fromJson(Map<String, dynamic> json) {
    final answersData = json['answers'] as Map<String, dynamic>;
    final answers =
        answersData.map((key, value) => MapEntry(key, value as String?));

    final correctAnswersData = json['correct_answers'] as Map<String, dynamic>;
    final correctAnswers =
        correctAnswersData.map((key, value) => MapEntry(key, value as bool));

    final tagsData = json['tags'] as List<dynamic>;
    final tags = tagsData
        .map((tagData) => Tag.fromJson(tagData as Map<String, dynamic>))
        .toList();

    return QuizQuestion(
      id: json['id'] as int,
      question: json['question'] as String,
      description: json['description'] as String?,
      answers: answers,
      multipleCorrectAnswers: json['multiple_correct_answers'] as bool,
      correctAnswers: correctAnswers,
      correctAnswer: json['correct_answer'] as String,
      explanation: json['explanation'] as String?,
      tip: json['tip'] as String?,
      tags: tags,
      category: json['category'] as String,
      difficulty: json['difficulty'] as String,
    );
  }
}

class Tag {
  final String name;

  Tag({required this.name});

  factory Tag.fromJson(Map<String, dynamic> json) {
    return Tag(
      name: json['name'] as String,
    );
  }
}
