import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:skillmatch/core/design_system/colors/app_colors.dart';
import 'package:skillmatch/core/design_system/spacing/app_radius.dart';
import 'package:skillmatch/core/design_system/typography/app_text_styles.dart';
import 'package:skillmatch/core/design_system/widgets/layout/app_card.dart';
import 'package:skillmatch/core/design_system/widgets/text/app_text.dart';

class RoadmapInsightCard extends StatelessWidget {
  const RoadmapInsightCard({
    super.key,
    required this.targetRole,
    required this.onAskChatBot,
  });

  final String targetRole;
  final VoidCallback onAskChatBot;

  @override
  Widget build(BuildContext context) {
    return AppCard(
      padding: EdgeInsets.all(14.r),
      borderRadius: AppRadius.radius12,
      boxShadow: const [],
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 34.r,
            height: 34.r,
            decoration: BoxDecoration(
              color: AppColors.secondaryContainer,
              borderRadius: BorderRadius.circular(AppRadius.radius8),
            ),
            child: Icon(
              Icons.lightbulb_outline_rounded,
              size: 20.r,
              color: AppColors.secondary,
            ),
          ),
          SizedBox(width: 10.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: AppText(
                        'Roadmap Insight',
                        style: AppTextStyles.labelLarge,
                        color: AppColors.primary,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    AppText(
                      'AI ADVISORY',
                      style: AppTextStyles.labelSmall,
                      color: AppColors.textSecondary,
                    ),
                  ],
                ),
                SizedBox(height: 4.h),
                AppText(
                  'Testing and CI/CD are currently your highest-impact skill gaps for $targetRole roles.',
                  style: AppTextStyles.bodySmall.copyWith(
                    color: AppColors.textPrimary,
                    height: 1.5,
                  ),
                ),
                SizedBox(height: 6.h),
                TextButton(
                  onPressed: onAskChatBot,
                  style: TextButton.styleFrom(
                    foregroundColor: AppColors.secondary,
                    padding: EdgeInsets.zero,
                    minimumSize: Size(0, 28.h),
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      AppText(
                        'Ask Chat Bot',
                        style: AppTextStyles.labelMedium,
                        color: AppColors.secondary,
                        fontWeight: FontWeight.w600,
                      ),
                      SizedBox(width: 4.w),
                      Icon(
                        Icons.arrow_forward_rounded,
                        size: 14.r,
                        color: AppColors.secondary,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
