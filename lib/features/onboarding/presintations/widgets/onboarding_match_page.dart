import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:skillmatch/core/design_system/colors/app_colors.dart';
import 'package:skillmatch/core/design_system/spacing/app_spacing.dart';
import 'package:skillmatch/core/design_system/typography/app_text_styles.dart';
import 'package:skillmatch/core/design_system/widgets/buttons/app_button.dart';
import 'package:skillmatch/core/design_system/widgets/media/app_assets.dart';
import 'package:skillmatch/features/onboarding/presintations/widgets/onboarding_match_summary_card.dart';
import 'package:skillmatch/features/onboarding/presintations/widgets/onboarding_llustration_card.dart';
import 'package:skillmatch/core/extensions/build_context_localization.dart';

class OnboardingMatchPage extends StatelessWidget {
  const OnboardingMatchPage({super.key, required this.onContinue});

  final VoidCallback onContinue;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: AppSpacing.space24.h),
      child: Column(
        children: [
          Expanded(
            child: Column(
              children: [
                Expanded(
                  child: OnboardingIllustrationCard(
                    padding: EdgeInsets.all(AppSpacing.space12.w),
                    child: Image.asset(
                      AppAssets.onboardingMatch,
                      fit: BoxFit.contain,
                      semanticLabel: context.l10n.matchImageSemantic,
                    ),
                  ),
                ),
                SizedBox(height: AppSpacing.space8.h),
                OnboardingMatchSummaryCard(),
              ],
            ),
          ),
          SizedBox(height: AppSpacing.space24.h),
          Align(
            alignment: AlignmentDirectional.centerStart,
            child: Text(
              context.l10n.matchTitle,
              style: AppTextStyles.sectionHeading.copyWith(
                color: AppColors.textPrimary,
              ),
            ),
          ),
          SizedBox(height: AppSpacing.space8.h),
          Align(
            alignment: AlignmentDirectional.centerStart,
            child: Text(
              context.l10n.matchDescription,
              style: AppTextStyles.bodyLarge.copyWith(
                color: AppColors.textSecondary,
              ),
            ),
          ),
          SizedBox(height: AppSpacing.space20.h),
          AppButton(
            text: context.l10n.continueAction,
            onPressed: onContinue,
            textStyle: AppTextStyles.buttonLarge,
          ),
        ],
      ),
    );
  }
}
