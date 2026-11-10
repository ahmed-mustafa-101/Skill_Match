import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:go_router/go_router.dart';
import 'package:skillmatch/core/design_system/colors/app_colors.dart';
import 'package:skillmatch/core/extensions/build_context_localization.dart';
import 'package:skillmatch/core/routing/app_routes.dart';
import 'package:skillmatch/features/roadmap/domain/entities/roadmap_milestone.dart';
import 'package:skillmatch/features/roadmap/presentation/widgets/roadmap_app_bar.dart';
import 'package:skillmatch/features/roadmap/presentation/widgets/roadmap_insight_card.dart';
import 'package:skillmatch/features/roadmap/presentation/widgets/roadmap_learning_path.dart';
import 'package:skillmatch/features/roadmap/presentation/widgets/roadmap_progress_card.dart';
import 'package:skillmatch/features/roadmap/presentation/widgets/roadmap_target_role_card.dart';
import 'package:skillmatch/features/roadmap/presentation/widgets/roadmap_tasks_sheet.dart';

class RoadmapScreen extends StatefulWidget {
  const RoadmapScreen({super.key});

  @override
  State<RoadmapScreen> createState() => _RoadmapScreenState();
}

class _RoadmapScreenState extends State<RoadmapScreen> {
  int _targetRoleIndex = 0;
  List<RoadmapTask> _tasks = const [
    RoadmapTask(type: RoadmapTaskType.learnBloc),
    RoadmapTask(type: RoadmapTaskType.implementBloc),
    RoadmapTask(type: RoadmapTaskType.refactorProject),
  ];

  int get _completedMilestones =>
      _tasks.every((task) => task.isComplete) ? 3 : 2;

  double get _progress => _completedMilestones == 2 ? .35 : .5;

  @override
  Widget build(BuildContext context) {
    final roles = [
      context.l10n.roadmapRoleFlutterDeveloper,
      context.l10n.roadmapRoleMobileDeveloper,
      context.l10n.roadmapRoleFrontendDeveloper,
      context.l10n.roadmapRoleSoftwareEngineer,
    ];
    final targetRole = roles[_targetRoleIndex];

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: RoadmapAppBar(onResetTasks: _resetTasks),
      body: SafeArea(
        top: false,
        child: ListView(
          padding: EdgeInsets.fromLTRB(16.w, 12.h, 16.w, 24.h),
          children: [
            RoadmapTargetRoleCard(
              role: targetRole,
              roles: roles,
              onRoleChanged: (role) {
                final index = roles.indexOf(role);
                if (index >= 0) setState(() => _targetRoleIndex = index);
              },
            ),
            SizedBox(height: 12.h),
            RoadmapProgressCard(
              progress: _progress,
              completedMilestones: _completedMilestones,
              totalMilestones: 6,
            ),
            SizedBox(height: 20.h),
            RoadmapLearningPath(
              tasks: _tasks,
              onTaskChanged: _toggleTask,
              onViewTasks: _showTasks,
            ),
            SizedBox(height: 12.h),
            RoadmapInsightCard(
              targetRole: targetRole,
              onAskChatBot: () => context.go(AppRoutes.chatBotScreen),
            ),
          ],
        ),
      ),
    );
  }

  void _toggleTask(int index) {
    setState(() {
      _tasks = [
        for (var i = 0; i < _tasks.length; i++)
          RoadmapTask(
            type: _tasks[i].type,
            isComplete: i == index
                ? !_tasks[i].isComplete
                : _tasks[i].isComplete,
          ),
      ];
    });
  }

  void _resetTasks() {
    setState(() {
      _tasks = _tasks
          .map((task) => RoadmapTask(type: task.type))
          .toList(growable: false);
    });
  }

  Future<void> _showTasks() {
    return RoadmapTasksSheet.show(
      context,
      tasks: _tasks,
      onTaskChanged: _toggleTask,
    );
  }
}
