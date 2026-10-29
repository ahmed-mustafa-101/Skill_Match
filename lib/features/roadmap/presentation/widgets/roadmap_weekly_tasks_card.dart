import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:skillmatch/core/design_system/colors/app_colors.dart';
import 'package:skillmatch/core/design_system/spacing/app_radius.dart';
import 'package:skillmatch/core/design_system/typography/app_text_styles.dart';
import 'package:skillmatch/core/design_system/widgets/buttons/app_button.dart';
import 'package:skillmatch/core/design_system/widgets/layout/app_card.dart';
import 'package:skillmatch/core/design_system/widgets/text/app_text.dart';
import 'package:skillmatch/features/roadmap/domain/entities/roadmap_milestone.dart';

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
                  'Focus for this week',
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
                  'PRIORITY',
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
              task: tasks[index],
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
                'Estimated: $timeEstimate',
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
                children: const [
                  TextSpan(
                    text: 'Why this matters: ',
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                  TextSpan(
                    text: 'State management appears frequently in Flutter roles that match your profile.',
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 8.h),
          AppButton(
            text: 'View Tasks',
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
  const _TaskCheckbox({required this.task, required this.onChanged});

  final RoadmapTask task;
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
                value: task.isComplete,
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
                task.title,
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
