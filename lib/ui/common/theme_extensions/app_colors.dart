import 'package:flutter/material.dart';
import 'package:jolly_podcast/ui/common/colors.dart';

class AppColors extends ThemeExtension<AppColors> {
  final Color? color1;
  final Color? color2;
  final Color? color3;
  final Color? color4;
  final Color? color5;
  final Color? color6;
  final Color? color7;
  final Color? color8;
  final Color? color9;
  final Color? color10;
  final Color? whiteColor;
  final Color? blackColor;

  const AppColors({
    required this.color1,
    required this.color2,
    required this.color3,
    required this.color4,
    required this.color5,
    required this.color6,
    required this.color7,
    required this.color8,
    required this.color9,
    required this.color10,
    required this.whiteColor,
    required this.blackColor,
  });

  // Factory constructor for light theme
  factory AppColors.light() {
    return const AppColors(
      color1: kcLightColor1,
      color2: kcLightColor2,
      color3: kcLightColor3,
      color4: kcLightColor4,
      color5: kcLightColor5,
      color6: kcLightColor6,
      color7: kcLightColor7,
      color8: kcLightColor8,
      color9: kcLightColor9,
      color10: kcLightColor10,
      whiteColor: kcWhiteColor,
      blackColor: kcBlackColor,
    );
  }

  // Factory constructor for dark theme
  factory AppColors.dark() {
    return const AppColors(
      color1: kcDarkColor1,
      color2: kcDarkColor2,
      color3: kcDarkColor3,
      color4: kcDarkColor4,
      color5: kcDarkColor5,
      color6: kcDarkColor6,
      color7: kcDarkColor7,
      color8: kcDarkColor8,
      color9: kcDarkColor9,
      color10: kcLightColor10,
      whiteColor: kcWhiteColor,
      blackColor: kcBlackColor,
    );
  }

  @override
  AppColors copyWith({
    Color? color1,
    Color? color2,
    Color? color3,
    Color? color4,
    Color? color5,
    Color? color6,
    Color? color7,
    Color? color8,
    Color? color9,
    Color? color10,
    Color? whiteColor,
    Color? blackColor,
  }) {
    return AppColors(
      color1: color1 ?? this.color1,
      color2: color2 ?? this.color2,
      color3: color3 ?? this.color3,
      color4: color4 ?? this.color4,
      color5: color5 ?? this.color5,
      color6: color6 ?? this.color6,
      color7: color7 ?? this.color7,
      color8: color8 ?? this.color8,
      color9: color9 ?? this.color9,
      color10: color10 ?? this.color10,
      whiteColor: whiteColor ?? this.whiteColor,
      blackColor: blackColor ?? this.blackColor,
    );
  }

  @override
  AppColors lerp(
    covariant ThemeExtension<AppColors>? other,
    double t,
  ) {
    if (other is! AppColors) {
      return this;
    }
    return AppColors(
      color1: Color.lerp(color1, other.color1, t),
      color2: Color.lerp(color2, other.color2, t),
      color3: Color.lerp(color3, other.color3, t),
      color4: Color.lerp(color4, other.color4, t),
      color5: Color.lerp(color5, other.color5, t),
      color6: Color.lerp(color6, other.color6, t),
      color7: Color.lerp(color7, other.color7, t),
      color8: Color.lerp(color8, other.color8, t),
      color9: Color.lerp(color9, other.color9, t),
      color10: Color.lerp(color10, other.color10, t),
      whiteColor: Color.lerp(whiteColor, other.whiteColor, t),
      blackColor: Color.lerp(blackColor, other.blackColor, t),
    );
  }
}
