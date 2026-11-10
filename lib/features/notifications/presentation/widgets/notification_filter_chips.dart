import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:skillmatch/core/design_system/colors/app_colors.dart';
import 'package:skillmatch/core/extensions/build_context_localization.dart';
import 'package:skillmatch/features/notifications/domain/entities/notification_item.dart';

class NotificationFilterChips extends StatelessWidget {
  const NotificationFilterChips({
    super.key,
    required this.selectedCategory,
    required this.onChanged,
  });

  final NotificationCategory selectedCategory;
  final ValueChanged<NotificationCategory> onChanged;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 52.h,
      child: ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
        scrollDirection: Axis.horizontal,
        itemCount: NotificationCategory.values.length,
        separatorBuilder: (_, _) => SizedBox(width: 8.w),
        itemBuilder: (context, index) {
          final category = NotificationCategory.values[index];
          final selected = category == selectedCategory;

          return ChoiceChip(
            label: Text(_categoryLabel(context, category)),
            selected: selected,
            showCheckmark: false,
            onSelected: (_) => onChanged(category),
            backgroundColor: AppColors.surface,
            selectedColor: AppColors.primary,
            side: BorderSide(
              color: selected ? AppColors.primary : AppColors.border,
            ),
            labelStyle: Theme.of(context).textTheme.labelMedium?.copyWith(
              color: selected ? AppColors.onPrimary : AppColors.textPrimary,
            ),
          );
        },
      ),
    );
  }

  String _categoryLabel(BuildContext context, NotificationCategory category) {
    return switch (category) {
      NotificationCategory.all => context.l10n.notificationCategoryAll,
      NotificationCategory.jobs => context.l10n.notificationCategoryJobs,
      NotificationCategory.applications =>
        context.l10n.notificationCategoryApplications,
      NotificationCategory.roadmap => context.l10n.notificationCategoryRoadmap,
      NotificationCategory.cv => context.l10n.notificationCategoryCv,
    };
  }
}
