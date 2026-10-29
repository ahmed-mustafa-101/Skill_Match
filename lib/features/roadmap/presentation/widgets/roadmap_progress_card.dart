import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:skillmatch/core/design_system/colors/app_colors.dart';
import 'package:skillmatch/core/design_system/spacing/app_radius.dart';
import 'package:skillmatch/core/design_system/typography/app_text_styles.dart';
import 'package:skillmatch/core/design_system/widgets/layout/app_card.dart';
import 'package:skillmatch/core/design_system/widgets/text/app_text.dart';

class RoadmapProgressCard extends StatelessWidget {
  const RoadmapProgressCard({
    super.key,
    required this.progress,
    required this.completedMilestones,
    required this.totalMilestones,
  });

  final double progress;
  final int completedMilestones;
  final int totalMilestones;

  @override
  Widget build(BuildContext context) {
    return AppCard(
      padding: EdgeInsets.all(14.r),
      borderRadius: AppRadius.radius12,
      boxShadow: const [],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: AppText(
                  'Your progress',
                  style: AppTextStyles.labelLarge,
                  fontWeight: FontWeight.w600,
                ),
              ),
              AppText(
                '${(progress * 100).round()}%',
                style: AppTextStyles.titleSmall,
                color: AppColors.primary,
                fontWeight: FontWeight.w700,
              ),
            ],
          ),
          SizedBox(height: 8.h),
          ClipRRect(
            borderRadius: BorderRadius.circular(AppRadius.radiusFull),
            child: LinearProgressIndicator(
              value: progress,
              minHeight: 6.h,
              backgroundColor: AppColors.surfaceHigh,
              valueColor: const AlwaysStoppedAnimation(AppColors.success),
            ),
          ),
          SizedBox(height: 8.h),
          Row(
            children: [
              Icon(
                Icons.check_circle_outline_rounded,
                size: 14.r,
                color: AppColors.textSecondary,
              ),
              SizedBox(width: 5.w),
              AppText(
                '$completedMilestones of $totalMilestones milestones completed',
                style: AppTextStyles.bodySmall,
                color: AppColors.textSecondary,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
