import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:skillmatch/core/design_system/colors/app_colors.dart';
import 'package:skillmatch/core/design_system/typography/app_text_styles.dart';
import 'package:skillmatch/core/design_system/widgets/text/app_text.dart';
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
          'Your learning path',
          style: AppTextStyles.titleSmall,
          color: AppColors.primary,
          fontWeight: FontWeight.w700,
        ),
        SizedBox(height: 2.h),
        AppText(
          'Follow these steps to become a stronger candidate.',
          style: AppTextStyles.bodySmall,
          color: AppColors.textSecondary,
        ),
        SizedBox(height: 14.h),
        ..._buildMilestones(),
      ],
    );
  }

  List<Widget> _buildMilestones() {
    return [
      const RoadmapMilestoneTile(
        title: 'Dart Foundations',
        description:
            'Core language concepts, async programming, and null safety.',
        status: RoadmapMilestoneStatus.completed,
        isLast: false,
        tags: ['Dart', 'Async', 'OOP'],
      ),
      const RoadmapMilestoneTile(
        title: 'Flutter Fundamentals',
        description:
            'Widgets, layouts, navigation, forms, and API integration.',
        status: RoadmapMilestoneStatus.completed,
        isLast: false,
        tags: ['Flutter', 'REST APIs'],
      ),
      RoadmapMilestoneTile(
        title: 'State Management',
        description: '',
        status: RoadmapMilestoneStatus.inProgress,
        isLast: false,
        tasks: tasks,
        timeEstimate: '5 hours',
        onTaskChanged: onTaskChanged,
        onViewTasks: onViewTasks,
      ),
      const RoadmapMilestoneTile(
        title: 'Testing',
        description: 'Unit testing, widget testing, and testable architecture.',
        status: RoadmapMilestoneStatus.next,
        isLast: false,
        isHighPriority: true,
      ),
      const RoadmapMilestoneTile(
        title: 'Clean Architecture',
        description: 'Structure scalable Flutter projects using clear architectural layers.',
        status: RoadmapMilestoneStatus.upcoming,
        isLast: false,
      ),
      const RoadmapMilestoneTile(
        title: 'CI/CD',
        description: 'Automate builds, testing, and deployment. Frequently requested in target jobs.',
        status: RoadmapMilestoneStatus.upcoming,
        isLast: false,
      ),
      const RoadmapMilestoneTile(
        title: 'Ready to Apply',
        description:
            'Complete the priority milestones to strengthen your profile.',
        status: RoadmapMilestoneStatus.ready,
        isLast: true,
      ),
    ];
  }
}
