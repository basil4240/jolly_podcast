import 'package:flutter/material.dart';
import 'package:jolly_podcast/ui/common/colors.dart';

class AppInputDecorations extends ThemeExtension<AppInputDecorations> {
  final InputDecoration? inputDecoration;

  const AppInputDecorations({
    this.inputDecoration,
  });

  factory AppInputDecorations.light() {
    return const AppInputDecorations(
      inputDecoration: InputDecoration(
        filled: true,
        fillColor: kcLightColor2,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(50)),
          borderSide: BorderSide.none,
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
      ),
    );
  }

  factory AppInputDecorations.dark() {
    return const AppInputDecorations(
      inputDecoration: InputDecoration(
        filled: true,
        fillColor: kcDarkColor2,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(50)),
          borderSide: BorderSide.none,
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
      ),
    );
  }

  @override
  ThemeExtension<AppInputDecorations> copyWith() {
    // TODO: implement copyWith
    throw UnimplementedError();
  }

  @override
  ThemeExtension<AppInputDecorations> lerp(
      covariant ThemeExtension<AppInputDecorations>? other, double t) {
    // TODO: implement lerp
    throw UnimplementedError();
  }
}
