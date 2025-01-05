import 'dart:ui';

import 'package:anamnesis_app/common/theme.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

class AnamnesisCubit extends Cubit<int> {
  AnamnesisCubit() : super(0);

  void nextStep() => emit(state + 1);

  void previousStep() {
    if (state > 0) emit(state - 1);
  }

  void onStepCompleted(BuildContext context) {
    showDialog<void>(
      context: context,
      builder: (context) {
        final theme = Theme.of(context);

        return BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 2.5, sigmaY: 2.5),
          child: AlertDialog(
            backgroundColor: AppColors.selected,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(5)),
            ),
            surfaceTintColor: Colors.black,
            title: Text(
              'Confirmación',
              style: theme.textTheme.labelLarge?.copyWith(fontWeight: FontWeight.bold),
            ),
            content: const Text('¿Desea guardar la información?'),
            actions: [
              TextButton(
                style: TextButton.styleFrom(
                  textStyle: theme.textTheme.labelLarge?.copyWith(fontWeight: FontWeight.bold),
                  foregroundColor: Colors.white,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('Cancelar'),
              ),
              TextButton(
                style: TextButton.styleFrom(
                  textStyle: theme.textTheme.labelLarge?.copyWith(fontWeight: FontWeight.bold),
                  backgroundColor: AppColors.selectedBorder,
                  foregroundColor: Colors.white,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                  debugPrint('Information confirmed!');
                },
                child: const Text('Aceptar'),
              ),
            ],
          ),
        );
      },
    );
  }
}
