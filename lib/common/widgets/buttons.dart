import 'package:anamnesis_app/common/theme.dart';
import 'package:flutter/material.dart';

/// This file contains all the custom buttons used in the app.
/// For namig conventions AppNameButtonSubject can be used. However for test purposes it is not necessary.

class PrimaryButton extends StatelessWidget {
  const PrimaryButton(
    this.label, {
    required this.onPressed,
    this.isEnabled = true,
    super.key,
    this.backgroundColor = AppColors.secondary,
  });

  final String label;
  final VoidCallback onPressed;
  final bool isEnabled;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final callback = isEnabled ? onPressed : null;

    return Container(
      padding: const EdgeInsets.all(15),
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.all(15),
          shape: const RoundedRectangleBorder(),
          backgroundColor: backgroundColor,
          textStyle: theme.textTheme.titleSmall,
        ),
        onPressed: callback,
        child: Text(label),
      ),
    );
  }
}

class ButtonGroupToggle extends StatelessWidget {
  const ButtonGroupToggle({
    required this.value,
    required this.onToggle,
    super.key,
  });

  final bool? value;
  final ValueChanged<bool> onToggle;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SizedBox(
      width: double.infinity,
      child: LayoutBuilder(
        builder: (context, constraints) {
          return ToggleButtons(
            textStyle: theme.textTheme.headlineMedium,
            constraints: BoxConstraints.expand(
              width: (constraints.maxWidth / 2) - 3,
            ),
            fillColor: AppColors.selected,
            selectedColor: Colors.white,
            selectedBorderColor: AppColors.selectedBorder,
            isSelected: [
              value ?? false,
              value == false,
            ],
            onPressed: (index) => onToggle(index == 0),
            children: const [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: Text('Sí'),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: Text('No'),
              ),
            ],
          );
        },
      ),
    );
  }
}
