import 'package:anamnesis_app/anamnesis/anamnesis.dart';
import 'package:anamnesis_app/common/theme.dart';
import 'package:anamnesis_app/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);

    return ScreenUtilInit(
      minTextAdapt: true,
      builder: (context, child) {
        return MaterialApp(
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          theme: AppTheme().light,
          home: const AnamnesisPage(),
        );
      },
    );
  }
}
