import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:skillmatch/core/design_system/colors/app_colors.dart';
import 'package:skillmatch/core/design_system/typography/app_text_styles.dart';
import 'package:skillmatch/core/design_system/widgets/text/app_text.dart';
import 'package:skillmatch/features/roadmap/domain/entities/roadmap_milestone.dart';
import 'package:skillmatch/features/roadmap/presentation/widgets/roadmap_milestone_decoration.dart';
import 'package:skillmatch/features/roadmap/presentation/widgets/roadmap_weekly_tasks_card.dart';

class RoadmapMilestoneTile extends StatelessWidget {
  const RoadmapMilestoneTile({
    super.key,
    required this.title,
    required this.description,
    required this.status,
    required this.isLast,
    this.tags = const [],
    this.tasks = const [],
    this.onTaskChanged,
    this.onViewTasks,
    this.timeEstimate,
    this.isHighPriority = false,
  }) : assert(
         status != RoadmapMilestoneStatus.inProgress ||
             (onTaskChanged != null && onViewTasks != null),
       );

  final String title;
  final String description;
  final RoadmapMilestoneStatus status;
  final bool isLast;
  final List<String> tags;
  final List<RoadmapTask> tasks;
  final ValueChanged<int>? onTaskChanged;
  final VoidCallback? onViewTasks;
  final String? timeEstimate;
  final bool isHighPriority;

  bool get _isActive => status == RoadmapMilestoneStatus.inProgress;

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 42.w,
            child: Column(
              children: [
                RoadmapMilestoneIndicator(status: status),
                if (!isLast)
                  Expanded(
                    child: Container(width: 2, color: AppColors.outlineVariant),
                  ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 2.w, bottom: isLast ? 0 : 20.h),
              child: _buildContent(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildContent() {
    if (status == RoadmapMilestoneStatus.ready) {
      return Padding(
        padding: EdgeInsets.only(top: 5.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppText(
              title,
              style: AppTextStyles.titleSmall,
              color: AppColors.primary,
              fontWeight: FontWeight.w700,
            ),
            SizedBox(height: 4.h),
            AppText(
              description,
              style: AppTextStyles.bodySmall,
              color: AppColors.textSecondary,
            ),
          ],
        ),
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 4.h),
        _buildTitleRow(),
        SizedBox(height: 4.h),
        AppText(
          description,
          style: AppTextStyles.bodySmall,
          color: AppColors.textSecondary,
        ),
        if (tags.isNotEmpty) ...[
          SizedBox(height: 8.h),
          Wrap(
            spacing: 6.w,
            runSpacing: 6.h,
            children: tags.map((tag) => RoadmapSkillTag(label: tag)).toList(),
          ),
        ],
        if (_isActive) ...[
          SizedBox(height: 12.h),
          RoadmapWeeklyTasksCard(
            tasks: tasks,
            onTaskChanged: onTaskChanged!,
            onViewTasks: onViewTasks!,
            timeEstimate: timeEstimate ?? '',
          ),
        ],
      ],
    );
  }

  Widget _buildTitleRow() {
    final color = switch (status) {
      RoadmapMilestoneStatus.completed => AppColors.success,
      RoadmapMilestoneStatus.inProgress ||
      RoadmapMilestoneStatus.next => AppColors.accent,
      RoadmapMilestoneStatus.upcoming => AppColors.surfaceDim,
      RoadmapMilestoneStatus.ready => AppColors.primary,
    };

    return Row(
      children: [
        Expanded(
          child: AppText(
            title,
            style: AppTextStyles.titleSmall,
            color: _isActive ? AppColors.primary : AppColors.textPrimary,
            fontWeight: _isActive ? FontWeight.w700 : FontWeight.w600,
          ),
        ),
        if (isHighPriority) ...[
          const RoadmapStatusBadge(label: 'Next', color: AppColors.accent),
          SizedBox(width: 6.w),
          const RoadmapStatusBadge(
            label: 'High priority gap',
            color: AppColors.secondary,
          ),
        ] else
          RoadmapStatusBadge(
            label: switch (status) {
              RoadmapMilestoneStatus.completed => 'Completed',
              RoadmapMilestoneStatus.inProgress => 'In Progress',
              RoadmapMilestoneStatus.next => 'Next',
              RoadmapMilestoneStatus.upcoming => 'Upcoming',
              RoadmapMilestoneStatus.ready => '',
            },
            color: color,
          ),
      ],
    );
  }
}
