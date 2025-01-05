import 'package:anamnesis_app/anamnesis/model/anamnesis_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AnamnesisStepTwoCubit extends Cubit<List<AnamnesisQuestion>> {
  AnamnesisStepTwoCubit() : super(_initQuestions());

  static List<AnamnesisQuestion> _initQuestions() {
    return [
      const AnamnesisQuestion(
        question: '¿Tiene dolores frecuentes y no ha consultado al médico?',
        type: AnamnesisQuestionType.boolean,
      ),
      const AnamnesisQuestion(
        question:
            '¿Le ha dicho al médico que tiene algún problema en los huesos o en las articulaciones, que pueda desfavorecer con el ejercicio?',
        type: AnamnesisQuestionType.boolean,
      ),
    ];
  }

  bool get allQuestionsAnswered {
    return state.every(
      (question) => !question.isRequired || (question.answer != null && question.answer.toString().trim().isNotEmpty),
    );
  }

  void onAnswerQuestion(int index, dynamic answer) {
    final questions = List<AnamnesisQuestion>.from(state);
    questions[index] = questions[index].copyWith(answer: answer);
    emit(questions);
  }
}
