import 'package:flutter/material.dart';

/// App Colors Design System
/// Workwise Color Palette
@immutable
final class AppColors {
  const AppColors._();

  // ===========================================================================
  // 1. Primary - Midnight Blue (#1F365C)
  // Main navigation, primary actions, hero structure
  // ===========================================================================
  static const Color primary = Color(0xFF1F365C);
  static const Color primaryContainer = Color(0xFF2C4A7A);
  static const Color onPrimary = Color(0xFFFFFFFF);
  static const Color onPrimaryContainer = Color(0xFFD6E2F7);

  static const Color primaryFixed = Color(0xFFD6E2F7);
  static const Color primaryFixedDim = Color(0xFFA6C0EB);
  static const Color onPrimaryFixed = Color(0xFF0C192E);
  static const Color onPrimaryFixedVariant = Color(0xFF1F365C);

  // ===========================================================================
  // 2. Secondary - Terracotta (#D06B4F)
  // Human warmth, profile accents, important secondary actions
  // ===========================================================================
  static const Color secondary = Color(0xFFD06B4F);
  static const Color secondaryContainer = Color(0xFFFBECE8);
  static const Color onSecondary = Color(0xFFFFFFFF);
  static const Color onSecondaryContainer = Color(0xFF4A1E13);

  static const Color secondaryFixed = Color(0xFFF9DDD4);
  static const Color secondaryFixedDim = Color(0xFFEEB4A3);
  static const Color onSecondaryFixed = Color(0xFF3B150C);
  static const Color onSecondaryFixedVariant = Color(0xFF783321);

  // ===========================================================================
  // 3. Accent - Golden Mustard (#D4A72C)
  // Skill tags, roadmap milestones, selected highlights
  // ===========================================================================
  static const Color accent = Color(0xFFD4A72C);
  static const Color accentContainer = Color(0xFFFAF5E6);
  static const Color onAccent = Color(0xFFFFFFFF);
  static const Color onAccentContainer = Color(0xFF423306);

  // ===========================================================================
  // 4. Background - Warm Cream (#FAF8F4)
  // Main application background
  // ===========================================================================
  static const Color background = Color(0xFFFAF8F4);
  static const Color onBackground = Color(0xFF222831);

  // ===========================================================================
  // 5. Surface - White (#FFFFFF)
  // Cards, job listings, CV sections and dialogs
  // ===========================================================================
  static const Color surface = Color(0xFFFFFFFF);
  static const Color surfaceLowest = Color(0xFFFFFFFF);
  static const Color surfaceLow = Color(0xFFFAF8F4);
  static const Color surfaceContainer = Color(0xFFF5F2EC);
  static const Color surfaceHigh = Color(0xFFEFECE5);
  static const Color surfaceHighest = Color(0xFFE8E5DD);
  static const Color surfaceDim = Color(0xFFE2DFD7);
  static const Color surfaceBright = Color(0xFFFFFFFF);
  static const Color surfaceVariant = Color(0xFFEFECE5);

  static const Color onSurface = Color(0xFF222831);
  static const Color onSurfaceVariant = Color(0xFF707780);
  static const Color inverseSurface = Color(0xFF222831);
  static const Color inverseOnSurface = Color(0xFFFAF8F4);
  static const Color inversePrimary = Color(0xFFA6C0EB);
  static const Color surfaceTint = Color(0xFF1F365C);

  // ===========================================================================
  // 6. Text
  // Main Text - Ink (#222831): Headings and primary content
  // Muted Text - Gray (#707780): Job metadata and secondary text
  // ===========================================================================
  static const Color textPrimary = Color(0xFF222831);
  static const Color mainText = Color(0xFF222831);

  static const Color textSecondary = Color(0xFF707780);
  static const Color textMuted = Color(0xFF707780);
  static const Color mutedText = Color(0xFF707780);

  static const Color textHint = Color(0xFF9EA4AC);
  static const Color textInverse = Color(0xFFFFFFFF);
  static const Color textDisabled = Color(0xFFB5B9C0);

  // ===========================================================================
  // 7. Border - Warm Gray (#E5E1DA)
  // Cards, inputs and separators
  // ===========================================================================
  static const Color border = Color(0xFFE5E1DA);
  static const Color divider = Color(0xFFE5E1DA);
  static const Color outline = Color(0xFFE5E1DA);
  static const Color outlineVariant = Color(0xFFE5E1DA);

  // ===========================================================================
  // 8. Success - Forest Green (#4F7A5A)
  // Strong match, completed roadmap steps
  // ===========================================================================
  static const Color success = Color(0xFF4F7A5A);
  static const Color successContainer = Color(0xFFEAF2ED);
  static const Color onSuccess = Color(0xFFFFFFFF);
  static const Color onSuccessContainer = Color(0xFF1B3322);

  // ===========================================================================
  // 9. Warning - Amber (#C88A26)
  // Developing skills, medium match, attention
  // ===========================================================================
  static const Color warning = Color(0xFFC88A26);
  static const Color warningContainer = Color(0xFFFAF3E8);
  static const Color onWarning = Color(0xFFFFFFFF);
  static const Color onWarningContainer = Color(0xFF422C08);

  // ===========================================================================
  // 10. Error - Muted Red (#B85450)
  // Validation errors and true negative states
  // ===========================================================================
  static const Color error = Color(0xFFB85450);
  static const Color errorContainer = Color(0xFFF8EDED);
  static const Color onError = Color(0xFFFFFFFF);
  static const Color onErrorContainer = Color(0xFF4A1A18);

  // ===========================================================================
  // States
  // ===========================================================================
  static const Color disabled = Color(0xFFE5E1DA);
  static const Color focus = primary;
  static const Color hover = Color(0xFFF5F2EC);
  static const Color pressed = Color(0xFFEFECE5);
  static const Color selected = primary;

  // ===========================================================================
  // Overlay
  // ===========================================================================
  static const Color overlay = Color(0x66000000);
  static const Color scrim = Color(0x99000000);

  // ===========================================================================
  // Common
  // ===========================================================================
  static const Color white = Colors.white;
  static const Color black = Colors.black;
  static const Color transparent = Colors.transparent;
}
