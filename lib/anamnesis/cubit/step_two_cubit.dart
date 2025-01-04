import 'package:bloc/bloc.dart';

class AnamnesisStepTwoCubit extends Cubit<List<String>> {
  AnamnesisStepTwoCubit()
      : super([
          '¿Tiene dolores frecuentes y no ha consultado al médico?',
          '¿Le ha dicho al médico que tiene algún problema en los huesos o en las articulaciones, que pueda desfavorecer con el ejercicio?',
        ]);
}
