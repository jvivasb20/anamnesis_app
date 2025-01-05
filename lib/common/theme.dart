import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTheme {
  ThemeData light = ThemeData(
    brightness: Brightness.light,
    useMaterial3: true,
    fontFamily: 'Futura',
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.primary,
      primary: AppColors.primary,
      secondary: AppColors.secondary,
      onPrimary: Colors.white,
      onSurface: Colors.white,
    ),
    textTheme: TextTheme(
      displayLarge: TextStyle(fontSize: 38.sp),
      displayMedium: TextStyle(fontSize: 32.sp),
      displaySmall: TextStyle(fontSize: 24.sp),
      //
      headlineLarge: TextStyle(fontSize: 20.sp, fontFamily: 'FuturaBook'),
      headlineMedium: TextStyle(fontSize: 18.sp, fontFamily: 'FuturaBook'),
      headlineSmall: TextStyle(fontSize: 16.sp, fontFamily: 'FuturaBook'),
      //
      titleLarge: TextStyle(fontSize: 22.sp, fontWeight: FontWeight.w600, fontFamily: 'FuturaBook'),
      titleMedium: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600, fontFamily: 'FuturaBook'),
      titleSmall: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w600, fontFamily: 'FuturaBook'),
      //
      bodyLarge: TextStyle(fontSize: 16.sp),
      bodyMedium: TextStyle(fontSize: 14.sp),
      bodySmall: TextStyle(fontSize: 12.sp),
      //
      labelLarge: TextStyle(fontSize: 14.sp, fontFamily: 'FuturaBook'),
      labelMedium: TextStyle(fontSize: 12.sp, fontFamily: 'FuturaBook'),
      labelSmall: TextStyle(fontSize: 10.sp, fontFamily: 'FuturaBook'),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.background,
      titleTextStyle: TextStyle(fontSize: 14.sp, fontFamily: 'FuturaBook', color: AppColors.hint),
    ),
    scaffoldBackgroundColor: AppColors.background,
  );
}

class AppColors {
  static const Color primary = Color(0xff03050b);
  static const Color secondary = Color(0xFFEDC603);
  static const Color background = Color(0XFF04070D);
  static const Color accent = Color(0xFFFF19A3);

  static const Color hint = Color(0xFFC0C5E0);

  static const Color inputBorder = Color(0xFF343642);

  static const Color selected = Color(0xFF141728);
  static const Color selectedBorder = Color(0xFF038BED);
}
