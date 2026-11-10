import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:skillmatch/core/design_system/colors/app_colors.dart';
import 'package:skillmatch/core/design_system/spacing/app_radius.dart';
import 'package:skillmatch/core/design_system/typography/app_text_styles.dart';
import 'package:skillmatch/core/design_system/widgets/buttons/app_button.dart';
import 'package:skillmatch/core/design_system/widgets/layout/app_card.dart';
import 'package:skillmatch/core/design_system/widgets/text/app_text.dart';
import 'package:skillmatch/core/extensions/build_context_localization.dart';
import 'package:skillmatch/features/roadmap/domain/entities/roadmap_milestone.dart';
import 'package:skillmatch/features/roadmap/presentation/utils/roadmap_task_localization.dart';

class RoadmapWeeklyTasksCard extends StatelessWidget {
  const RoadmapWeeklyTasksCard({
    super.key,
    required this.tasks,
    required this.onTaskChanged,
    required this.onViewTasks,
    required this.timeEstimate,
  });

  final List<RoadmapTask> tasks;
  final ValueChanged<int> onTaskChanged;
  final VoidCallback onViewTasks;
  final String timeEstimate;

  @override
  Widget build(BuildContext context) {
    return AppCard(
      padding: EdgeInsets.all(12.r),
      borderRadius: AppRadius.radius12,
      boxShadow: const [],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: AppText(
                  context.l10n.roadmapFocusThisWeek,
                  style: AppTextStyles.labelLarge,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 7.w, vertical: 3.h),
                decoration: BoxDecoration(
                  color: AppColors.surfaceLow,
                  border: Border.all(color: AppColors.outlineVariant),
                  borderRadius: BorderRadius.circular(AppRadius.radius4),
                ),
                child: AppText(
                  context.l10n.roadmapPriority,
                  style: AppTextStyles.labelSmall.copyWith(fontSize: 9),
                  color: AppColors.warning,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          SizedBox(height: 6.h),
          for (var index = 0; index < tasks.length; index++)
            _TaskCheckbox(
              taskLabel: tasks[index].localizedTitle(context),
              isComplete: tasks[index].isComplete,
              onChanged: () => onTaskChanged(index),
            ),
          SizedBox(height: 4.h),
          Row(
            children: [
              Icon(
                Icons.access_time_rounded,
                size: 15.r,
                color: AppColors.textSecondary,
              ),
              SizedBox(width: 5.w),
              AppText(
                context.l10n.roadmapEstimatedTime(timeEstimate),
                style: AppTextStyles.bodySmall,
                color: AppColors.textSecondary,
              ),
            ],
          ),
          SizedBox(height: 10.h),
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(10.r),
            decoration: BoxDecoration(
              color: AppColors.warningContainer,
              border: const Border(
                left: BorderSide(color: AppColors.warning, width: 2),
              ),
              borderRadius: BorderRadius.circular(AppRadius.radius4),
            ),
            child: RichText(
              text: TextSpan(
                style: AppTextStyles.bodySmall.copyWith(
                  color: AppColors.textPrimary,
                  height: 1.6,
                ),
                children: [
                  TextSpan(
                    text: context.l10n.roadmapWhyThisMatters,
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                  TextSpan(text: context.l10n.roadmapWhyThisMattersDescription),
                ],
              ),
            ),
          ),
          SizedBox(height: 8.h),
          AppButton(
            text: context.l10n.roadmapViewTasks,
            trailing: Icon(
              Icons.arrow_forward_rounded,
              size: 16.r,
              color: AppColors.onPrimary,
            ),
            onPressed: onViewTasks,
            height: 48.h,
            borderRadius: AppRadius.radius8,
            textStyle: AppTextStyles.buttonSmall.copyWith(
              color: AppColors.onPrimary,
            ),
          ),
        ],
      ),
    );
  }
}

class _TaskCheckbox extends StatelessWidget {
  const _TaskCheckbox({
    required this.taskLabel,
    required this.isComplete,
    required this.onChanged,
  });

  final String taskLabel;
  final bool isComplete;
  final VoidCallback onChanged;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onChanged,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 2.h),
        child: Row(
          children: [
            SizedBox(
              width: 24.r,
              height: 28.r,
              child: Checkbox(
                value: isComplete,
                onChanged: (_) => onChanged(),
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                visualDensity: VisualDensity.compact,
                side: const BorderSide(color: AppColors.outlineVariant),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(AppRadius.radius4),
                ),
              ),
            ),
            SizedBox(width: 6.w),
            Expanded(
              child: AppText(
                taskLabel,
                style: AppTextStyles.bodySmall,
                color: AppColors.textPrimary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
