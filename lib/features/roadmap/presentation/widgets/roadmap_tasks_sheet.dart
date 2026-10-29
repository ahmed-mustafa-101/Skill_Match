import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:skillmatch/core/design_system/colors/app_colors.dart';
import 'package:skillmatch/core/design_system/spacing/app_radius.dart';
import 'package:skillmatch/core/design_system/typography/app_text_styles.dart';
import 'package:skillmatch/core/design_system/widgets/text/app_text.dart';
import 'package:skillmatch/features/roadmap/domain/entities/roadmap_milestone.dart';

class RoadmapTasksSheet extends StatefulWidget {
  const RoadmapTasksSheet({
    super.key,
    required this.tasks,
    required this.onTaskChanged,
  });

  final List<RoadmapTask> tasks;
  final ValueChanged<int> onTaskChanged;

  @override
  State<RoadmapTasksSheet> createState() => _RoadmapTasksSheetState();

  static Future<void> show(
    BuildContext context, {
    required List<RoadmapTask> tasks,
    required ValueChanged<int> onTaskChanged,
  }) {
    return showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      backgroundColor: AppColors.background,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(AppRadius.radius20.r),
        ),
      ),
      builder: (context) =>
          RoadmapTasksSheet(tasks: tasks, onTaskChanged: onTaskChanged),
    );
  }
}

class _RoadmapTasksSheetState extends State<RoadmapTasksSheet> {
  late List<RoadmapTask> _tasks;

  @override
  void initState() {
    super.initState();
    _tasks = List.of(widget.tasks);
  }

  void _toggleTask(int index) {
    setState(() {
      _tasks = [
        for (var i = 0; i < _tasks.length; i++)
          RoadmapTask(
            title: _tasks[i].title,
            isComplete: i == index
                ? !_tasks[i].isComplete
                : _tasks[i].isComplete,
          ),
      ];
    });
    widget.onTaskChanged(index);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.fromLTRB(20.w, 12.h, 20.w, 24.h),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                width: 36.w,
                height: 4.h,
                decoration: BoxDecoration(
                  color: AppColors.surfaceDim,
                  borderRadius: BorderRadius.circular(AppRadius.radiusFull),
                ),
              ),
            ),
            SizedBox(height: 18.h),
            AppText(
              'State Management tasks',
              style: AppTextStyles.titleMedium,
              color: AppColors.primary,
              fontWeight: FontWeight.w700,
            ),
            SizedBox(height: 8.h),
            for (var index = 0; index < _tasks.length; index++)
              CheckboxListTile(
                contentPadding: EdgeInsets.zero,
                controlAffinity: ListTileControlAffinity.leading,
                value: _tasks[index].isComplete,
                title: Text(_tasks[index].title),
                onChanged: (_) => _toggleTask(index),
              ),
          ],
        ),
      ),
    );
  }
}
