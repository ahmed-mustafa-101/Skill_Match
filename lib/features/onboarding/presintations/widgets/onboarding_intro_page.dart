import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:skillmatch/core/design_system/colors/app_colors.dart';
import 'package:skillmatch/core/design_system/spacing/app_spacing.dart';
import 'package:skillmatch/core/design_system/typography/app_text_styles.dart';
import 'package:skillmatch/core/design_system/widgets/buttons/app_button.dart';
import 'package:skillmatch/core/design_system/widgets/media/app_assets.dart';
import 'package:skillmatch/features/onboarding/presintations/widgets/onboarding_llustration_card.dart';

class OnboardingIntroPage extends StatelessWidget {
  const OnboardingIntroPage({super.key, required this.onContinue});

  final VoidCallback onContinue;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: AppSpacing.space24.h),
      child: Column(
        children: [
          Expanded(
            child: OnboardingIllustrationCard(
              child: Image.asset(
                AppAssets.onboardingMatch,
                fit: BoxFit.contain,
                semanticLabel: 'A CV and phone connected by a job match',
              ),
            ),
          ),
          SizedBox(height: AppSpacing.space24.h),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Turn your CV into opportunities',
              style: AppTextStyles.sectionHeading.copyWith(
                color: AppColors.textPrimary,
              ),
            ),
          ),
          SizedBox(height: AppSpacing.space8.h),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'See why a job fits you, what you’re missing, and what to do next.',
              style: AppTextStyles.bodyLarge.copyWith(
                color: AppColors.textSecondary,
              ),
            ),
          ),
          SizedBox(height: AppSpacing.space20.h),
          AppButton(
            text: 'Continue',
            onPressed: onContinue,
            textStyle: AppTextStyles.buttonLarge,
          ),
        ],
      ),
    );
  }
}
