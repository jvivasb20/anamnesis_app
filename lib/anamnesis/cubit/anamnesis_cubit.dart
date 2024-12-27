import 'package:bloc/bloc.dart';

class AnamnesisCubit extends Cubit<int> {
  AnamnesisCubit() : super(0);

  void nextStep() => emit(state + 1);
  void previousStep() => emit(state - 1);
}
