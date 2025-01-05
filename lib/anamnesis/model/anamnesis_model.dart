import 'package:flutter/material.dart';

class AnamnesisQuestion {
  const AnamnesisQuestion({
    required this.question,
    required this.type,
    this.answer,
    this.isRequired = true,
  });

  final String question;
  final AnamnesisQuestionType type;
  final dynamic answer;
  final bool isRequired;

  AnamnesisQuestion copyWith({
    String? question,
    AnamnesisQuestionType? type,
    dynamic answer,
    bool? isRequired,
  }) {
    return AnamnesisQuestion(
      question: question ?? this.question,
      type: type ?? this.type,
      answer: answer ?? this.answer,
      isRequired: isRequired ?? this.isRequired,
    );
  }
}

enum AnamnesisQuestionType { boolean, text }

class AnamnesisNavigation {
  const AnamnesisNavigation({
    required this.onNext,
    this.onPrevious,
  });

  final VoidCallback? onPrevious;
  final VoidCallback onNext;
}
