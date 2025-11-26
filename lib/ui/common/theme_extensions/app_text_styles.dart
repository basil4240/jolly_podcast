import 'package:flutter/material.dart';

import '../colors.dart';

class AppTextStyles extends ThemeExtension<AppTextStyles> {
  final TextStyle? onboardingTitle;
  final TextStyle? formFieldLabel;
  final TextStyle? formFieldInput;
  final TextStyle? buttonText;
  final TextStyle? pageTitle;
  final TextStyle? pageSubtitle;
  final TextStyle? sortLabel;
  final TextStyle? podcastTitle;
  final TextStyle? podcastAuthor;
  final TextStyle? actionButtonText;
  final TextStyle? followingButtonText;
  final TextStyle? navLabel;
  final TextStyle? navLabelActive;
  final TextStyle? showMoreButton;
  final TextStyle? episodeTitle;
  final TextStyle? episodeDescription;
  final TextStyle? episodeDate;
  final TextStyle? playerTitle;
  final TextStyle? playerDescription;
  final TextStyle? playerTime;

  const AppTextStyles({
    this.onboardingTitle,
    this.formFieldLabel,
    this.formFieldInput,
    this.buttonText,
    this.pageTitle,
    this.pageSubtitle,
    this.sortLabel,
    this.podcastTitle,
    this.podcastAuthor,
    this.actionButtonText,
    this.followingButtonText,
    this.navLabel,
    this.navLabelActive,
    this.showMoreButton,
    this.episodeTitle,
    this.episodeDescription,
    this.episodeDate,
    this.playerTitle,
    this.playerDescription,
    this.playerTime,
  });

  // Factory constructor for light theme
  factory AppTextStyles.light() {
    return const AppTextStyles(
      onboardingTitle: TextStyle(
        color: kcWhiteColor,
        fontSize: 28,
        height: 40 / 28,
        fontWeight: FontWeight.w700,
      ),
      formFieldLabel: TextStyle(
        color: kcWhiteColor,
        fontWeight: FontWeight.w600,
        fontSize: 15,
      ),
      formFieldInput: TextStyle(
        color: kcWhiteColor,
        fontWeight: FontWeight.w600,
        fontSize: 15,
      ),
      buttonText: TextStyle(
        color: kcWhiteColor,
        fontSize: 20,
        fontWeight: FontWeight.w700,
      ),
      pageTitle: TextStyle(
        color: kcWhiteColor,
        fontSize: 20,
        height: 40 / 20,
        fontWeight: FontWeight.w800,
      ),
      pageSubtitle: TextStyle(
        color: Color(0xFFA7A7A7),
        fontSize: 14,
      ),
      sortLabel: TextStyle(
        color: kcWhiteColor,
        fontSize: 14,
      ),
      podcastTitle: TextStyle(
        color: kcWhiteColor,
        fontSize: 16,
        fontWeight: FontWeight.w600,
      ),
      podcastAuthor: TextStyle(
        color: kcLightColor5,
        fontSize: 12,
      ),
      actionButtonText: TextStyle(
        color: kcLightColor5,
        fontSize: 13,
        fontWeight: FontWeight.w500,
      ),
      followingButtonText: TextStyle(
        color: kcWhiteColor,
        fontSize: 13,
        fontWeight: FontWeight.w500,
      ),
      navLabel: TextStyle(
        color: kcLightColor5,
        fontSize: 12,
      ),
      navLabelActive: TextStyle(
        color: kcWhiteColor,
        fontSize: 12,
        fontWeight: FontWeight.w600,
      ),
      showMoreButton: TextStyle(
        color: kcWhiteColor,
        fontSize: 15,
        fontWeight: FontWeight.w600,
      ),
      episodeTitle: TextStyle(
        color: kcWhiteColor,
        fontSize: 16,
        fontWeight: FontWeight.w600,
      ),
      episodeDescription: TextStyle(
        color: kcLightColor5,
        height: 0.5,
        fontSize: 13,
      ),
      episodeDate: TextStyle(color: kcLightColor5, fontSize: 12),
      playerTitle: TextStyle(
        color: kcWhiteColor,
        fontSize: 18,
        fontWeight: FontWeight.w600,
      ),
      playerDescription: TextStyle(
        color: kcWhiteColor,
        fontSize: 13,
        height: 1.4,
      ),
      playerTime: TextStyle(
        color: kcWhiteColor,
        fontSize: 12,
      ),
    );
  }

  // Factory constructor for dark theme
  factory AppTextStyles.dark() {
    return const AppTextStyles(
      onboardingTitle: TextStyle(
        color: kcWhiteColor,
        // Assuming kcWhite is white for light theme context
        fontSize: 28,
        height: 40 / 28,
        fontWeight: FontWeight.w700,
      ),
      formFieldLabel: TextStyle(
        color: kcWhiteColor,
        fontWeight: FontWeight.w600,
        fontSize: 15,
      ),
      formFieldInput: TextStyle(
        color: kcWhiteColor,
        fontWeight: FontWeight.w600,
        fontSize: 15,
      ),
      buttonText: TextStyle(
        color: kcWhiteColor,
        fontSize: 20,
        fontWeight: FontWeight.w700,
      ),
      pageTitle: TextStyle(
        color: kcWhiteColor,
        fontSize: 24,
        fontWeight: FontWeight.w700,
      ),
      pageSubtitle: TextStyle(
        color: Color(0xFFA7A7A7),
        height: 24 / 14,
        fontSize: 14,
      ),
      sortLabel: TextStyle(
        color: kcWhiteColor,
        fontSize: 14,
      ),
      podcastTitle: TextStyle(
        color: kcWhiteColor,
        fontSize: 16,
        fontWeight: FontWeight.w600,
      ),
      podcastAuthor: TextStyle(
        color: kcLightColor5,
        fontSize: 12,
      ),
      actionButtonText: TextStyle(
        color: kcLightColor5,
        fontSize: 13,
        fontWeight: FontWeight.w500,
      ),
      followingButtonText: TextStyle(
        color: kcWhiteColor,
        fontSize: 13,
        fontWeight: FontWeight.w500,
      ),
      navLabel: TextStyle(
        color: kcLightColor5,
        fontSize: 12,
      ),
      navLabelActive: TextStyle(
        color: kcWhiteColor,
        fontSize: 12,
        fontWeight: FontWeight.w600,
      ),
      showMoreButton: TextStyle(
        color: kcWhiteColor,
        fontSize: 15,
        fontWeight: FontWeight.w600,
      ),
      episodeTitle: TextStyle(
        color: kcWhiteColor,
        fontSize: 16,
        fontWeight: FontWeight.w600,
      ),
      episodeDescription: TextStyle(
        color: kcDarkColor5,
        height: 0.977,
        fontSize: 13,
      ),
      episodeDate: TextStyle(color: kcDarkColor5, fontSize: 12),
      playerTitle: TextStyle(
        color: kcWhiteColor,
        fontSize: 18,
        fontWeight: FontWeight.w600,
      ),
      playerDescription: TextStyle(
        color: kcWhiteColor,
        fontSize: 13,
        height: 1.4,
      ),
      playerTime: TextStyle(
        color: kcWhiteColor,
        fontSize: 12,
      ),
    );
  }

  @override
  ThemeExtension<AppTextStyles> copyWith({
    TextStyle? onboardingTitle,
    TextStyle? formFieldLabel,
    TextStyle? formFieldInput,
    TextStyle? buttonText,
    TextStyle? pageTitle,
    TextStyle? pageSubtitle,
    TextStyle? sortLabel,
    TextStyle? podcastTitle,
    TextStyle? podcastAuthor,
    TextStyle? actionButtonText,
    TextStyle? followingButtonText,
    TextStyle? navLabel,
    TextStyle? navLabelActive,
    TextStyle? showMoreButton,
    TextStyle? episodeTitle,
    TextStyle? episodeDescription,
    TextStyle? episodeDate,
    TextStyle? playerTitle,
    TextStyle? playerDescription,
    TextStyle? playerTime,
  }) {
    return AppTextStyles(
      onboardingTitle: onboardingTitle ?? this.onboardingTitle,
      formFieldLabel: formFieldLabel ?? this.formFieldLabel,
      formFieldInput: formFieldInput ?? this.formFieldInput,
      buttonText: buttonText ?? this.buttonText,
      pageTitle: pageTitle ?? this.pageTitle,
      pageSubtitle: pageSubtitle ?? this.pageSubtitle,
      sortLabel: sortLabel ?? this.sortLabel,
      podcastTitle: podcastTitle ?? this.podcastTitle,
      podcastAuthor: podcastAuthor ?? this.podcastAuthor,
      actionButtonText: actionButtonText ?? this.actionButtonText,
      followingButtonText: followingButtonText ?? this.followingButtonText,
      navLabel: navLabel ?? this.navLabel,
      navLabelActive: navLabelActive ?? this.navLabelActive,
      showMoreButton: showMoreButton ?? this.showMoreButton,
      episodeTitle: episodeTitle ?? this.episodeTitle,
      episodeDescription: episodeDescription ?? this.episodeDescription,
      episodeDate: episodeDate ?? this.episodeDate,
      playerTitle: playerTitle ?? this.playerTitle,
      playerDescription: playerDescription ?? this.playerDescription,
      playerTime: playerTime ?? this.playerTime,
    );
  }

  @override
  ThemeExtension<AppTextStyles> lerp(
    covariant ThemeExtension<AppTextStyles>? other,
    double t,
  ) {
    if (other is! AppTextStyles) {
      return this;
    }
    return AppTextStyles(
      onboardingTitle:
          TextStyle.lerp(onboardingTitle, other.onboardingTitle, t),
      formFieldLabel: TextStyle.lerp(formFieldLabel, other.formFieldLabel, t),
      formFieldInput: TextStyle.lerp(formFieldInput, other.formFieldInput, t),
      buttonText: TextStyle.lerp(buttonText, other.buttonText, t),
      pageTitle: TextStyle.lerp(pageTitle, other.pageTitle, t),
      pageSubtitle: TextStyle.lerp(pageSubtitle, other.pageSubtitle, t),
      sortLabel: TextStyle.lerp(sortLabel, other.sortLabel, t),
      podcastTitle: TextStyle.lerp(podcastTitle, other.podcastTitle, t),
      podcastAuthor: TextStyle.lerp(podcastAuthor, other.podcastAuthor, t),
      actionButtonText:
          TextStyle.lerp(actionButtonText, other.actionButtonText, t),
      followingButtonText:
          TextStyle.lerp(followingButtonText, other.followingButtonText, t),
      navLabel: TextStyle.lerp(navLabel, other.navLabel, t),
      navLabelActive: TextStyle.lerp(navLabelActive, other.navLabelActive, t),
      showMoreButton: TextStyle.lerp(showMoreButton, other.showMoreButton, t),
      episodeTitle: TextStyle.lerp(episodeTitle, other.episodeTitle, t),
      episodeDescription:
          TextStyle.lerp(episodeDescription, other.episodeDescription, t),
      episodeDate: TextStyle.lerp(episodeDate, other.episodeDate, t),
      playerTitle: TextStyle.lerp(playerTitle, other.playerTitle, t),
      playerDescription:
          TextStyle.lerp(playerDescription, other.playerDescription, t),
      playerTime: TextStyle.lerp(playerTime, other.playerTime, t),
    );
  }
}
