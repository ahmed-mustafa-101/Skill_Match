import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:skillmatch/core/design_system/colors/app_colors.dart';
import 'package:skillmatch/core/design_system/spacing/app_radius.dart';
import 'package:skillmatch/core/design_system/spacing/app_spacing.dart';
import 'package:skillmatch/core/design_system/typography/app_text_styles.dart';
import 'package:skillmatch/core/design_system/widgets/buttons/app_button.dart';
import 'package:skillmatch/core/design_system/widgets/text/app_text.dart';
import 'package:skillmatch/features/onboarding/presintations/widgets/custom_widget.dart';
import 'package:skillmatch/features/onboarding/presintations/widgets/onboarding_dotted_connector.dart';
import 'package:skillmatch/features/onboarding/presintations/widgets/onboarding_profile_step.dart';

class OnboardingProfilePage extends StatelessWidget {
  const OnboardingProfilePage({
    super.key,
    required this.onStart,
    required this.onNotNow,
  });

  final VoidCallback onStart;
  final VoidCallback onNotNow;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: AppSpacing.space8.h),
      child: Column(
        children: [
          Expanded(
            child: Center(
              child: Row(
                children: const [
                  Expanded(
                    child: OnboardingProfileStep(
                      icon: Icons.description_outlined,
                      label: 'CV',
                      color: AppColors.primary,
                    ),
                  ),
                  OnboardingDottedConnector(),
                  Expanded(
                    child: OnboardingProfileStep(
                      icon: Icons.work_outline,
                      label: 'Target',
                      color: AppColors.secondary,
                    ),
                  ),
                  OnboardingDottedConnector(),
                  Expanded(
                    child: OnboardingProfileStep(
                      icon: Icons.flag_outlined,
                      label: 'Roadmap',
                      color: AppColors.accent,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(AppSpacing.space16.w),
            decoration: BoxDecoration(
              color: AppColors.surface,
              border: Border.all(color: AppColors.border),
              borderRadius: BorderRadius.circular(AppRadius.radius16.r),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                AppText(
                  'Let’s set up your career profile',
                  style: AppTextStyles.sectionHeading.copyWith(
                    color: AppColors.textPrimary,
                  ),
                ),
                SizedBox(height: AppSpacing.space12.h),
                const OnboardingProfileBenefit(
                  color: AppColors.secondary,
                  label: 'Upload your CV (optional)',
                ),
                SizedBox(height: AppSpacing.space8.h),
                const OnboardingProfileBenefit(
                  color: AppColors.primary,
                  label: 'Choose your target role',
                ),
                SizedBox(height: AppSpacing.space8.h),
                const OnboardingProfileBenefit(
                  color: AppColors.accent,
                  label: 'Get your roadmap and weekly actions',
                ),
                SizedBox(height: AppSpacing.space20.h),
                AppButton(
                  text: 'Start',
                  onPressed: onStart,
                  textStyle: AppTextStyles.buttonLarge,
                ),
                SizedBox(height: AppSpacing.space4.h),
                SizedBox(
                  width: double.infinity,
                  height: 40.h,
                  child: TextButton(
                    onPressed: onNotNow,
                    style: TextButton.styleFrom(
                      foregroundColor: AppColors.secondary,
                    ),
                    child: AppText(
                      'Not now',
                      style: AppTextStyles.bodyMedium.copyWith(
                        color: AppColors.secondary,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: AppSpacing.space24.h),
        ],
      ),
    );
  }
}
