import 'package:flutter/material.dart';

class AnamnesisStepOneView extends StatelessWidget {
  const AnamnesisStepOneView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: const Color(0xff03050b),
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_ios),
        title: Text('Bienvenido a tu nuevo comienzo', style: theme.textTheme.headlineSmall?.copyWith(fontSize: 16)),
      ),
      body: const Center(child: Text('Anamnesis Step 1', style: TextStyle(color: Colors.white))),
    );
  }
}
