import 'package:flutter/material.dart';
import 'package:jolly_podcast/ui/common/theme_extensions/app_colors.dart';
import 'package:jolly_podcast/ui/common/theme_extensions/app_text_styles.dart';
import 'package:jolly_podcast/ui/common/colors.dart';

// TODO: to add proper light theme colors
ThemeData get appLightTheme => ThemeData(
    colorScheme: const ColorScheme.light(primary: kcDarkPrimaryGreen),
    primaryColor: kcDarkPrimaryGreen,
    brightness: Brightness.light,
    fontFamily: 'Nunito',
    extensions: <ThemeExtension<dynamic>>[
      AppTextStyles.light(),
      AppColors.light()
    ],
    scaffoldBackgroundColor: kcWhite);
