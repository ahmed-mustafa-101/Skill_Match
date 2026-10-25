import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:skillmatch/core/design_system/colors/app_colors.dart';
import 'package:skillmatch/core/design_system/spacing/app_radius.dart';
import 'package:skillmatch/core/design_system/spacing/app_spacing.dart';
import 'package:skillmatch/core/design_system/typography/app_text_styles.dart';

class OnboardingMatchSummaryCard extends StatelessWidget {
  const OnboardingMatchSummaryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: AppSpacing.space12.w,
        vertical: AppSpacing.space8.h,
      ),
      decoration: BoxDecoration(
        color: AppColors.surface,
        border: Border.all(color: AppColors.border),
        borderRadius: BorderRadius.circular(AppRadius.radius12.r),
        boxShadow: const [
          BoxShadow(
            color: Color(0x0A000000),
            blurRadius: 8,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 7.w,
                height: 7.h,
                decoration: const BoxDecoration(
                  color: AppColors.secondary,
                  shape: BoxShape.circle,
                ),
              ),
              SizedBox(width: AppSpacing.space8.w),
              Expanded(
                child: Text(
                  'Flutter Developer Intern',
                  style: AppTextStyles.labelLarge.copyWith(
                    color: AppColors.textPrimary,
                  ),
                ),
              ),
              const _OnboardingStatusChip(),
            ],
          ),
          SizedBox(height: AppSpacing.space4.h),
          Row(
            children: [
              Expanded(
                child: Text(
                  'TechNova • Cairo • Hybrid',
                  style: AppTextStyles.bodySmall.copyWith(
                    color: AppColors.textSecondary,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: AppSpacing.space8.w,
                  vertical: AppSpacing.space2.h,
                ),
                decoration: BoxDecoration(
                  color: AppColors.accentContainer,
                  borderRadius: BorderRadius.circular(AppRadius.radius4.r),
                ),
                child: Text(
                  '94%',
                  style: AppTextStyles.labelSmall.copyWith(
                    color: AppColors.onAccentContainer,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _OnboardingStatusChip extends StatelessWidget {
  const _OnboardingStatusChip();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: AppSpacing.space8.w,
        vertical: AppSpacing.space2.h,
      ),
      decoration: BoxDecoration(
        color: AppColors.successContainer,
        borderRadius: BorderRadius.circular(AppRadius.radiusFull.r),
        border: Border.all(color: AppColors.success.withValues(alpha: .2)),
      ),
      child: Text(
        'Strong match',
        style: AppTextStyles.labelSmall.copyWith(color: AppColors.success),
      ),
    );
  }
}
