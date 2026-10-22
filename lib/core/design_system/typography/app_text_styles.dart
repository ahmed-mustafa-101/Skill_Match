import 'package:flutter/material.dart';

import '../colors/app_colors.dart';

/// App Text Styles Design System
///
/// Implements typography system from Brand Guide:
///
/// **SkillMatch Typography (Active Product)**:
/// - Headings: DM Sans (Arabic: Alexandria)
/// - Body / UI: Inter (Arabic: Tajawal)
///
/// **Smart HR Typography (Alternative)**:
/// - Headings: Manrope (Arabic: Cairo)
/// - Body / UI: Inter (Arabic: Tajawal)
///
/// **Type Hierarchy**:
/// - Page Title:      28-32 px | Bold (w700)
/// - Section Heading: 20-24 px | SemiBold (w600)
/// - Card Title:      16-18 px | SemiBold (w600)
/// - Body:            14-16 px | Regular (w400)
/// - Label / Caption: 12-14 px | Medium (w500)
@immutable
final class AppTextStyles {
  const AppTextStyles._();

  // ===========================================================================
  // Font Families
  // ===========================================================================

  /// SkillMatch Headings Font
  static const String headingFontFamily = 'DM Sans';

  /// Body & UI Font
  static const String bodyFontFamily = 'Inter';

  /// SkillMatch Arabic Support Fonts
  static const String headingFontFamilyArabic = 'Alexandria';
  static const String bodyFontFamilyArabic = 'Tajawal';

  /// Smart HR Alternate Fonts
  static const String smartHrHeadingFontFamily = 'Manrope';
  static const String smartHrHeadingFontFamilyArabic = 'Cairo';

  /// Default general font family (maintains compatibility)
  static const String fontFamily = bodyFontFamily;

  // ===========================================================================
  // Brand Guide Type Hierarchy (Direct Mappings)
  // ===========================================================================

  // --- Page Title (28-32 px, Bold) ---
  static const TextStyle pageTitleLarge = TextStyle(
    fontFamily: headingFontFamily,
    fontSize: 32,
    fontWeight: FontWeight.w700,
    height: 40 / 32,
    letterSpacing: -.5,
    color: AppColors.textPrimary,
  );

  static const TextStyle pageTitle = TextStyle(
    fontFamily: headingFontFamily,
    fontSize: 28,
    fontWeight: FontWeight.w700,
    height: 36 / 28,
    letterSpacing: -.3,
    color: AppColors.textPrimary,
  );

  static const TextStyle pageTitleSmall = pageTitle;

  // --- Section Heading (20-24 px, SemiBold) ---
  static const TextStyle sectionHeadingLarge = TextStyle(
    fontFamily: headingFontFamily,
    fontSize: 24,
    fontWeight: FontWeight.w600,
    height: 32 / 24,
    letterSpacing: -.2,
    color: AppColors.textPrimary,
  );

  static const TextStyle sectionHeading = TextStyle(
    fontFamily: headingFontFamily,
    fontSize: 20,
    fontWeight: FontWeight.w600,
    height: 28 / 20,
    color: AppColors.textPrimary,
  );

  static const TextStyle sectionHeadingSmall = sectionHeading;

  // --- Card Title (16-18 px, SemiBold) ---
  static const TextStyle cardTitleLarge = TextStyle(
    fontFamily: headingFontFamily,
    fontSize: 18,
    fontWeight: FontWeight.w600,
    height: 24 / 18,
    color: AppColors.textPrimary,
  );

  static const TextStyle cardTitle = TextStyle(
    fontFamily: headingFontFamily,
    fontSize: 16,
    fontWeight: FontWeight.w600,
    height: 24 / 16,
    color: AppColors.textPrimary,
  );

  static const TextStyle cardTitleSmall = cardTitle;

  // ===========================================================================
  // Display (Large Hero & Marketing Displays)
  // ===========================================================================

  static const TextStyle displayLarge = TextStyle(
    fontFamily: headingFontFamily,
    fontSize: 48,
    fontWeight: FontWeight.w700,
    height: 56 / 48,
    letterSpacing: -.8,
    color: AppColors.textPrimary,
  );

  static const TextStyle displayMedium = TextStyle(
    fontFamily: headingFontFamily,
    fontSize: 36,
    fontWeight: FontWeight.w700,
    height: 44 / 36,
    letterSpacing: -.5,
    color: AppColors.textPrimary,
  );

  static const TextStyle displaySmall = TextStyle(
    fontFamily: headingFontFamily,
    fontSize: 32,
    fontWeight: FontWeight.w700,
    height: 40 / 32,
    letterSpacing: -.3,
    color: AppColors.textPrimary,
  );

  // ===========================================================================
  // Headlines (Mapped to Page Title & Section Heading Hierarchy)
  // ===========================================================================

  /// Page Title Max: 32 px, Bold
  static const TextStyle headlineLarge = TextStyle(
    fontFamily: headingFontFamily,
    fontSize: 32,
    fontWeight: FontWeight.w700,
    height: 40 / 32,
    letterSpacing: -.5,
    color: AppColors.textPrimary,
  );

  /// Page Title Min: 28 px, Bold
  static const TextStyle headlineMedium = TextStyle(
    fontFamily: headingFontFamily,
    fontSize: 28,
    fontWeight: FontWeight.w700,
    height: 36 / 28,
    letterSpacing: -.3,
    color: AppColors.textPrimary,
  );

  /// Section Heading Max: 24 px, SemiBold
  static const TextStyle headlineSmall = TextStyle(
    fontFamily: headingFontFamily,
    fontSize: 24,
    fontWeight: FontWeight.w600,
    height: 32 / 24,
    letterSpacing: -.2,
    color: AppColors.textPrimary,
  );

  // ===========================================================================
  // Titles (Mapped to Section Heading Min & Card Title Hierarchy)
  // ===========================================================================

  /// Section Heading Min: 20 px, SemiBold
  static const TextStyle titleLarge = TextStyle(
    fontFamily: headingFontFamily,
    fontSize: 20,
    fontWeight: FontWeight.w600,
    height: 28 / 20,
    color: AppColors.textPrimary,
  );

  /// Card Title Max: 18 px, SemiBold
  static const TextStyle titleMedium = TextStyle(
    fontFamily: headingFontFamily,
    fontSize: 18,
    fontWeight: FontWeight.w600,
    height: 24 / 18,
    color: AppColors.textPrimary,
  );

  /// Card Title Min: 16 px, SemiBold
  static const TextStyle titleSmall = TextStyle(
    fontFamily: headingFontFamily,
    fontSize: 16,
    fontWeight: FontWeight.w600,
    height: 24 / 16,
    color: AppColors.textPrimary,
  );

  // ===========================================================================
  // Body (14-16 px, Regular)
  // ===========================================================================

  /// Body Max: 16 px, Regular
  static const TextStyle bodyLarge = TextStyle(
    fontFamily: bodyFontFamily,
    fontSize: 16,
    fontWeight: FontWeight.w400,
    height: 24 / 16,
    color: AppColors.textPrimary,
  );

  /// Body Min: 14 px, Regular
  static const TextStyle bodyMedium = TextStyle(
    fontFamily: bodyFontFamily,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    height: 20 / 14,
    color: AppColors.textPrimary,
  );

  /// Body Supporting / Small: 12 px, Regular
  static const TextStyle bodySmall = TextStyle(
    fontFamily: bodyFontFamily,
    fontSize: 12,
    fontWeight: FontWeight.w400,
    height: 16 / 12,
    color: AppColors.textSecondary,
  );

  // Direct alias
  static const TextStyle body = bodyLarge;

  // ===========================================================================
  // Labels & Captions (12-14 px, Medium)
  // ===========================================================================

  /// Label / Caption Max: 14 px, Medium
  static const TextStyle labelLarge = TextStyle(
    fontFamily: bodyFontFamily,
    fontSize: 14,
    fontWeight: FontWeight.w500,
    height: 20 / 14,
    letterSpacing: .1,
    color: AppColors.textPrimary,
  );

  /// Label / Caption Min: 12 px, Medium
  static const TextStyle labelMedium = TextStyle(
    fontFamily: bodyFontFamily,
    fontSize: 12,
    fontWeight: FontWeight.w500,
    height: 16 / 12,
    letterSpacing: .2,
    color: AppColors.textPrimary,
  );

  /// Label Supporting / Small: 11 px, Medium
  static const TextStyle labelSmall = TextStyle(
    fontFamily: bodyFontFamily,
    fontSize: 11,
    fontWeight: FontWeight.w500,
    height: 16 / 11,
    letterSpacing: .3,
    color: AppColors.textSecondary,
  );

  // Direct aliases
  static const TextStyle label = labelLarge;
  static const TextStyle caption = TextStyle(
    fontFamily: bodyFontFamily,
    fontSize: 12,
    fontWeight: FontWeight.w500,
    height: 16 / 12,
    color: AppColors.textSecondary,
  );

  // ===========================================================================
  // Buttons
  // ===========================================================================

  static const TextStyle button = TextStyle(
    fontFamily: bodyFontFamily,
    fontSize: 16,
    fontWeight: FontWeight.w600,
    height: 24 / 16,
    color: AppColors.white,
  );

  static const TextStyle buttonLarge = button;

  static const TextStyle buttonMedium = TextStyle(
    fontFamily: bodyFontFamily,
    fontSize: 14,
    fontWeight: FontWeight.w600,
    height: 20 / 14,
    color: AppColors.white,
  );

  static const TextStyle buttonSmall = TextStyle(
    fontFamily: bodyFontFamily,
    fontSize: 12,
    fontWeight: FontWeight.w600,
    height: 16 / 12,
    color: AppColors.white,
  );

  // ===========================================================================
  // Inputs & Form Controls
  // ===========================================================================

  static const TextStyle input = TextStyle(
    fontFamily: bodyFontFamily,
    fontSize: 16,
    fontWeight: FontWeight.w400,
    height: 24 / 16,
    color: AppColors.textPrimary,
  );

  static const TextStyle hint = TextStyle(
    fontFamily: bodyFontFamily,
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: AppColors.textHint,
  );

  // ===========================================================================
  // Code & Monospace
  // ===========================================================================

  static const TextStyle code = TextStyle(
    fontFamily: 'JetBrainsMono',
    fontSize: 14,
    fontWeight: FontWeight.w400,
    height: 20 / 14,
    color: AppColors.textPrimary,
    fontFeatures: [FontFeature.tabularFigures()],
  );
}
