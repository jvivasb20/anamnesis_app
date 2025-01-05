import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

class AnamnesisCubit extends Cubit<int> {
  AnamnesisCubit() : super(0);

  void nextStep() => emit(state + 1);

  void previousStep() {
    if (state > 0) emit(state - 1);
  }

  void onStepCompleted() {
    debugPrint('All steps completed!');
  }
}
