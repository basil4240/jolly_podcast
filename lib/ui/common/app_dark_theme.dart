import 'package:flutter/material.dart';
import 'package:jolly_podcast/ui/common/theme_extensions/app_colors.dart';
import 'package:jolly_podcast/ui/common/theme_extensions/app_text_styles.dart';
import 'package:jolly_podcast/ui/common/theme_extensions/app_input_decorations.dart';
import 'package:jolly_podcast/ui/common/colors.dart';

ThemeData get appDarkTheme => ThemeData(
    colorScheme: const ColorScheme.dark(),
    brightness: Brightness.dark,
    fontFamily: 'Nunito',
    extensions: <ThemeExtension<dynamic>>[
      AppTextStyles.dark(),
      AppColors.dark(),
      AppInputDecorations.dark()
    ],
    scaffoldBackgroundColor: AppColors.dark().color4!);
