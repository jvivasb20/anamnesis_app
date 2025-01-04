class AnamnesisQuestion {
  AnamnesisQuestion({
    required this.question,
    required this.type,
    this.isRequired = true,
  });

  final String question;
  final AnamnesisQuestionType type;
  final bool isRequired;
}

enum AnamnesisQuestionType { boolean, text }
