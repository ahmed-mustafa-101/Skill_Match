import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:skillmatch/core/design_system/colors/app_colors.dart';
import 'package:skillmatch/core/design_system/typography/app_text_styles.dart';
import 'package:skillmatch/core/design_system/widgets/text/app_text.dart';
import 'package:skillmatch/core/extensions/build_context_localization.dart';
import 'package:skillmatch/features/roadmap/domain/entities/roadmap_milestone.dart';
import 'package:skillmatch/features/roadmap/presentation/widgets/roadmap_milestone_tile.dart';

class RoadmapLearningPath extends StatelessWidget {
  const RoadmapLearningPath({
    super.key,
    required this.tasks,
    required this.onTaskChanged,
    required this.onViewTasks,
  });

  final List<RoadmapTask> tasks;
  final ValueChanged<int> onTaskChanged;
  final VoidCallback onViewTasks;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppText(
          context.l10n.roadmapLearningPath,
          style: AppTextStyles.titleSmall,
          color: AppColors.primary,
          fontWeight: FontWeight.w700,
        ),
        SizedBox(height: 2.h),
        AppText(
          context.l10n.roadmapLearningPathDescription,
          style: AppTextStyles.bodySmall,
          color: AppColors.textSecondary,
        ),
        SizedBox(height: 14.h),
        ..._buildMilestones(context),
      ],
    );
  }

  List<Widget> _buildMilestones(BuildContext context) {
    return [
      RoadmapMilestoneTile(
        title: context.l10n.roadmapDartFoundations,
        description: context.l10n.roadmapDartFoundationsDescription,
        status: RoadmapMilestoneStatus.completed,
        isLast: false,
        tags: [
          'Dart',
          context.l10n.roadmapTagAsync,
          context.l10n.roadmapTagOop,
        ],
      ),
      RoadmapMilestoneTile(
        title: context.l10n.roadmapFlutterFundamentals,
        description: context.l10n.roadmapFlutterFundamentalsDescription,
        status: RoadmapMilestoneStatus.completed,
        isLast: false,
        tags: ['Flutter', context.l10n.roadmapTagRestApis],
      ),
      RoadmapMilestoneTile(
        title: context.l10n.roadmapStateManagement,
        description: '',
        status: RoadmapMilestoneStatus.inProgress,
        isLast: false,
        tasks: tasks,
        timeEstimate: context.l10n.roadmapFiveHours,
        onTaskChanged: onTaskChanged,
        onViewTasks: onViewTasks,
      ),
      RoadmapMilestoneTile(
        title: context.l10n.roadmapTesting,
        description: context.l10n.roadmapTestingDescription,
        status: RoadmapMilestoneStatus.next,
        isLast: false,
        isHighPriority: true,
      ),
      RoadmapMilestoneTile(
        title: context.l10n.roadmapCleanArchitecture,
        description: context.l10n.roadmapCleanArchitectureDescription,
        status: RoadmapMilestoneStatus.upcoming,
        isLast: false,
      ),
      RoadmapMilestoneTile(
        title: context.l10n.roadmapCiCd,
        description: context.l10n.roadmapCiCdDescription,
        status: RoadmapMilestoneStatus.upcoming,
        isLast: false,
      ),
      RoadmapMilestoneTile(
        title: context.l10n.roadmapReadyToApply,
        description: context.l10n.roadmapReadyToApplyDescription,
        status: RoadmapMilestoneStatus.ready,
        isLast: true,
      ),
    ];
  }
}
