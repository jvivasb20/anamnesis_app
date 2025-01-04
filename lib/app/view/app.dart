import 'package:anamnesis_app/anamnesis/view/anamnesis_page.dart';
import 'package:anamnesis_app/common/theme.dart';
import 'package:anamnesis_app/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      child: MaterialApp(
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        builder: (context, child) {
          ScreenUtil.init(context);
          return Theme(data: AppTheme().light, child: const AnamnesisPage());
        },
      ),
    );
  }
}
