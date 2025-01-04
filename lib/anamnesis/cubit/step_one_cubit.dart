import 'package:anamnesis_app/anamnesis/model/anamnesis_model.dart';
import 'package:bloc/bloc.dart';

class AnamnesisStepOneCubit extends Cubit<List<AnamnesisQuestion>> {
  AnamnesisStepOneCubit()
      : super([
          AnamnesisQuestion(
            question: '¿Tiene dolores frecuentes y no ha consultado al médico?',
            type: AnamnesisQuestionType.boolean,
          ),
          AnamnesisQuestion(
            question:
                '¿Le ha dicho al médico que tiene algún problema en los huesos o en las articulaciones, que pueda desfavorecer con el ejercicio?',
            type: AnamnesisQuestionType.boolean,
          ),
        ]);
}
