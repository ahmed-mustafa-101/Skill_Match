import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:skillmatch/core/design_system/colors/app_colors.dart';
import 'package:skillmatch/core/design_system/spacing/app_radius.dart';
import 'package:skillmatch/core/design_system/typography/app_text_styles.dart';
import 'package:skillmatch/core/design_system/widgets/text/app_text.dart';
import 'package:skillmatch/features/roadmap/domain/entities/roadmap_milestone.dart';

class RoadmapMilestoneIndicator extends StatelessWidget {
  const RoadmapMilestoneIndicator({super.key, required this.status});

  final RoadmapMilestoneStatus status;

  @override
  Widget build(BuildContext context) {
    if (status == RoadmapMilestoneStatus.ready) {
      return Container(
        width: 34.r,
        height: 34.r,
        decoration: BoxDecoration(
          color: AppColors.primaryFixed,
          shape: BoxShape.circle,
          border: Border.all(color: AppColors.primary, width: 2),
        ),
        child: Icon(Icons.flag_outlined, size: 18.r, color: AppColors.primary),
      );
    }

    if (status == RoadmapMilestoneStatus.completed) {
      return Container(
        width: 34.r,
        height: 34.r,
        decoration: const BoxDecoration(
          color: AppColors.success,
          shape: BoxShape.circle,
        ),
        child: Icon(Icons.check_rounded, size: 21.r, color: AppColors.white),
      );
    }

    final isActive = status == RoadmapMilestoneStatus.inProgress;
    final isUpcoming = status == RoadmapMilestoneStatus.upcoming;
    return Container(
      width: 34.r,
      height: 34.r,
      decoration: BoxDecoration(
        color: AppColors.surface,
        shape: BoxShape.circle,
        border: Border.all(
          color: isUpcoming ? AppColors.outlineVariant : AppColors.accent,
          width: isActive ? 3 : 1.5,
        ),
        boxShadow: isActive
            ? [
                BoxShadow(
                  color: AppColors.accent.withValues(alpha: .18),
                  blurRadius: 0,
                  spreadRadius: 4,
                ),
              ]
            : null,
      ),
      child: Center(
        child: Container(
          width: isUpcoming ? 7.r : 10.r,
          height: isUpcoming ? 7.r : 10.r,
          decoration: BoxDecoration(
            color: isUpcoming ? AppColors.outlineVariant : AppColors.accent,
            shape: BoxShape.circle,
          ),
        ),
      ),
    );
  }
}

class RoadmapStatusBadge extends StatelessWidget {
  const RoadmapStatusBadge({
    super.key,
    required this.label,
    required this.color,
  });

  final String label;
  final Color color;

  @override
  Widget build(BuildContext context) {
    final background = switch (color) {
      AppColors.success => AppColors.successContainer,
      AppColors.accent => AppColors.accentContainer,
      AppColors.secondary => AppColors.secondaryContainer,
      _ => AppColors.surfaceContainer,
    };

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 3.h),
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.circular(AppRadius.radiusFull),
      ),
      child: AppText(
        label,
        style: AppTextStyles.labelSmall,
        color: color == AppColors.accent ? AppColors.warning : color,
        fontWeight: FontWeight.w600,
        maxLines: 1,
      ),
    );
  }
}

class RoadmapSkillTag extends StatelessWidget {
  const RoadmapSkillTag({super.key, required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 3.h),
      decoration: BoxDecoration(
        color: AppColors.surfaceContainer,
        border: Border.all(color: AppColors.outlineVariant),
        borderRadius: BorderRadius.circular(AppRadius.radius4),
      ),
      child: AppText(label, style: AppTextStyles.labelSmall),
    );
  }
}
