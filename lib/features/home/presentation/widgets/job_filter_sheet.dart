import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:skillmatch/core/design_system/colors/app_colors.dart';
import 'package:skillmatch/core/design_system/typography/app_text_styles.dart';
import 'package:skillmatch/features/home/presentation/utils/home_job_filter.dart';
import 'package:skillmatch/features/home/presentation/utils/home_text_style.dart';

class JobFilterSheet extends StatelessWidget {
  const JobFilterSheet({super.key, required this.selectedFilter});

  final String selectedFilter;

  static Future<String?> show(
    BuildContext context, {
    required String selectedFilter,
  }) {
    return showModalBottomSheet<String>(
      context: context,
      backgroundColor: AppColors.surface,
      showDragHandle: true,
      builder: (_) => JobFilterSheet(selectedFilter: selectedFilter),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.fromLTRB(20.w, 4.h, 20.w, 24.h),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Filter jobs',
              style: homeTextStyle(AppTextStyles.sectionHeading),
            ),
            SizedBox(height: 12.h),
            Wrap(
              spacing: 8.w,
              runSpacing: 8.h,
              children: HomeJobFilter.filters.map((filter) {
                final selected = filter == selectedFilter;
                return ChoiceChip(
                  label: Text(filter),
                  selected: selected,
                  onSelected: (_) => Navigator.pop(context, filter),
                  selectedColor: AppColors.primaryFixed,
                  labelStyle: homeTextStyle(
                    AppTextStyles.bodySmall.copyWith(
                      color: selected
                          ? AppColors.primary
                          : AppColors.textSecondary,
                    ),
                  ),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
