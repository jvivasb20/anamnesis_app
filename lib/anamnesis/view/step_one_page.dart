import 'package:anamnesis_app/anamnesis/cubit/step_one_cubit.dart';
import 'package:anamnesis_app/anamnesis/model/anamnesis_model.dart';
import 'package:anamnesis_app/common/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AnamnesisStepOnePage extends StatelessWidget {
  const AnamnesisStepOnePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => AnamnesisStepOneCubit(),
      child: const AnamnesisStepOneView(),
    );
  }
}

class AnamnesisStepOneView extends StatelessWidget {
  const AnamnesisStepOneView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: const Color(0xff03050b),
      appBar: AppBar(
        backgroundColor: const Color(0xff03050b),
        leading: const Icon(Icons.arrow_back_ios),
        centerTitle: true,
        title: Text('Bienvenido a tu nuevo comienzo', style: theme.textTheme.bodySmall),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                spacing: 25,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    spacing: 5,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Completa la siguiente información',
                        style: theme.textTheme.titleSmall,
                      ),
                      RichText(
                        text: TextSpan(
                          text: 'Todos los campos son obligatorios',
                          style: theme.textTheme.headlineSmall,
                          children: const [
                            TextSpan(
                              text: '*',
                              style: TextStyle(color: AppColors.accent),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: BlocBuilder<AnamnesisStepOneCubit, List<AnamnesisQuestion>>(
                      builder: (context, questions) {
                        return ListView.separated(
                          itemCount: questions.length,
                          separatorBuilder: (_, __) => const SizedBox(
                            height: 24,
                          ),
                          itemBuilder: (context, index) {
                            final question = questions[index];

                            return Column(
                              spacing: 15,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RichText(
                                  text: TextSpan(
                                    style: theme.textTheme.labelLarge,
                                    text: question.question,
                                    children: [
                                      if (question.isRequired)
                                        const TextSpan(
                                          text: '*',
                                          style: TextStyle(
                                            color: AppColors.accent,
                                          ),
                                        ),
                                    ],
                                  ),
                                ),
                                if (question.type == AnamnesisQuestionType.boolean)
                                  SizedBox(
                                    width: double.infinity,
                                    child: LayoutBuilder(
                                      builder: (context, constraints) {
                                        return ToggleButtons(
                                          constraints: BoxConstraints.expand(width: (constraints.maxWidth / 2) - 3),
                                          fillColor: AppColors.selected,
                                          selectedColor: Colors.white,
                                          selectedBorderColor: AppColors.selectedBorder,
                                          isSelected: const [false, true],
                                          onPressed: (_) {},
                                          children: const [
                                            Text(
                                              'Sí',
                                            ),
                                            Text(
                                              'No',
                                            ),
                                          ],
                                        );
                                      },
                                    ),
                                  ),
                              ],
                            );
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(15),
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(15),
                shape: const RoundedRectangleBorder(),
                backgroundColor: AppColors.secondary,
                textStyle: theme.textTheme.titleSmall,
              ),
              onPressed: () {},
              child: const Text('Siguiente'),
            ),
          ),
        ],
      ),
    );
  }
}
