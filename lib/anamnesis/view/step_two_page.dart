import 'package:anamnesis_app/anamnesis/cubit/step_two_cubit.dart';
import 'package:anamnesis_app/anamnesis/model/anamnesis_model.dart';
import 'package:anamnesis_app/common/theme.dart';
import 'package:anamnesis_app/common/widgets/buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AnamnesisStepTwoPage extends StatelessWidget {
  const AnamnesisStepTwoPage(this.navigation, {super.key});
  final AnamnesisNavigation navigation;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final cubit = context.watch<AnamnesisStepTwoCubit>();

    return Scaffold(
      appBar: AppBar(
        leading: navigation.onPrevious != null
            ? IconButton(icon: const Icon(Icons.arrow_back_ios), onPressed: navigation.onPrevious)
            : null,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text('Bienvenido a tu nuevo comienzo'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                spacing: 35,
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
                    child: BlocBuilder<AnamnesisStepTwoCubit, List<AnamnesisQuestion>>(
                      builder: (context, questions) {
                        return ListView.separated(
                          itemCount: questions.length,
                          separatorBuilder: (_, __) => const SizedBox(
                            height: 24,
                          ),
                          itemBuilder: (context, qIndex) {
                            final question = questions[qIndex];

                            return Column(
                              spacing: 15,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RichText(
                                  text: TextSpan(
                                    style: theme.textTheme.headlineSmall,
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
                                if (question.type == AnamnesisQuestionType.text)
                                  TextField(
                                    onChanged: (value) => cubit.onAnswerQuestion(qIndex, value),
                                    decoration: InputDecoration(
                                      hintText: 'Escribe aquí',
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                    ),
                                  ),
                                if (question.type == AnamnesisQuestionType.boolean)
                                  ButtonGroupToggle(
                                    onToggle: (index) => cubit.onAnswerQuestion(qIndex, index),
                                    value: question.answer as bool?,
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
          PrimaryButton(
            'Siguiente',
            isEnabled: cubit.allQuestionsAnswered,
            onPressed: navigation.onNext,
          ),
        ],
      ),
    );
  }
}
