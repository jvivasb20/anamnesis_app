import 'package:anamnesis_app/anamnesis/cubit/anamnesis_cubit.dart';
import 'package:anamnesis_app/anamnesis/cubit/step_one_cubit.dart';
import 'package:anamnesis_app/anamnesis/cubit/step_two_cubit.dart';
import 'package:anamnesis_app/anamnesis/model/anamnesis_model.dart';
import 'package:anamnesis_app/anamnesis/view/step_one_page.dart';
import 'package:anamnesis_app/anamnesis/view/step_two_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AnamnesisPage extends StatelessWidget {
  const AnamnesisPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => AnamnesisCubit()),
        BlocProvider(create: (_) => AnamnesisStepOneCubit()),
        BlocProvider(create: (_) => AnamnesisStepTwoCubit()),
      ],
      child: BlocBuilder<AnamnesisCubit, int>(
        builder: (context, stepIndex) {
          final cubit = context.read<AnamnesisCubit>();

          switch (stepIndex) {
            case 0:
              return AnamnesisStepOnePage(
                AnamnesisNavigation(
                  onNext: cubit.nextStep,
                ),
              );
            case 1:
              return AnamnesisStepTwoPage(
                AnamnesisNavigation(
                  onPrevious: cubit.previousStep,
                  onNext: cubit.onStepCompleted,
                ),
              );
            default:
              return const Center(child: Text('Invalid step'));
          }
        },
      ),
    );
  }
}
