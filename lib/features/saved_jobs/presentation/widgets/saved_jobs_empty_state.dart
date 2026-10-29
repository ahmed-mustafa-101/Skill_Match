import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:skillmatch/core/design_system/colors/app_colors.dart';
import 'package:skillmatch/core/design_system/spacing/app_spacing.dart';
import 'package:skillmatch/core/design_system/typography/app_text_styles.dart';
import 'package:skillmatch/core/design_system/widgets/text/app_text.dart';

class SavedJobsEmptyState extends StatelessWidget {
  const SavedJobsEmptyState({super.key, required this.isAppliedTab});

  final bool isAppliedTab;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: AppSpacing.space24.w,
        vertical: AppSpacing.space64.h,
      ),
      child: Column(
        children: [
          Icon(
            isAppliedTab
                ? Icons.work_outline_rounded
                : Icons.bookmark_border_rounded,
            size: 42.r,
            color: AppColors.textSecondary,
          ),
          SizedBox(height: AppSpacing.space12.h),
          AppText(
            isAppliedTab ? 'No applications yet' : 'No saved jobs yet',
            style: AppTextStyles.titleMedium.copyWith(
              color: AppColors.textSecondary,
            ),
          ),
          SizedBox(height: AppSpacing.space4.h),
          AppText(
            isAppliedTab
                ? 'Jobs you apply to will appear here.'
                : 'Tap the bookmark on a job to save it here.',
            textAlign: TextAlign.center,
            style: AppTextStyles.bodySmall.copyWith(
              color: AppColors.textSecondary,
            ),
          ),
        ],
      ),
    );
  }
}
