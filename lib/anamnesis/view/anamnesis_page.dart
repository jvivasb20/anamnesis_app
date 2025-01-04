import 'package:anamnesis_app/anamnesis/cubit/anamnesis_cubit.dart';
import 'package:anamnesis_app/anamnesis/view/step_one_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AnamnesisPage extends StatelessWidget {
  const AnamnesisPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => AnamnesisCubit(),
      child: const AnamnesisStepOnePage(),
    );
  }
}
