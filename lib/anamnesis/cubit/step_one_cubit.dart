import 'package:anamnesis_app/anamnesis/model/anamnesis_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AnamnesisStepOneCubit extends Cubit<List<AnamnesisQuestion>> {
  AnamnesisStepOneCubit() : super(_initQuestions());

  final Map<int, TextEditingController> _controllers = {};

  static List<AnamnesisQuestion> _initQuestions() {
    return [
      const AnamnesisQuestion(
        question: '¿Ha tenido operaciones? ¿Cuáles y hace cuánto tiempo?',
        type: AnamnesisQuestionType.text,
      ),
      const AnamnesisQuestion(
        question: '¿Tiene o tuvo alguna enfermedad diagnosticada o tratada por un médico?',
        type: AnamnesisQuestionType.text,
      ),
    ];
  }

  bool get allQuestionsAnswered {
    return state.every((question) => !question.isRequired || question.answer != null);
  }

  TextEditingController getController(int index) {
    if (!_controllers.containsKey(index)) {
      final question = state[index];
      _controllers[index] = TextEditingController(text: question.answer?.toString() ?? '');
      _controllers[index]!.addListener(() {
        onAnswerQuestion(index, _controllers[index]!.text);
      });
    }
    return _controllers[index]!;
  }

  void onAnswerQuestion(int index, dynamic answer) {
    final questions = List<AnamnesisQuestion>.from(state);
    questions[index] = questions[index].copyWith(answer: answer);
    emit(questions);
  }

  @override
  Future<void> close() {
    for (final controller in _controllers.values) {
      controller.dispose();
    }
    return super.close();
  }
}
