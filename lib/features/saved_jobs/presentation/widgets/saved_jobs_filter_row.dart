import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:skillmatch/core/design_system/colors/app_colors.dart';
import 'package:skillmatch/core/design_system/spacing/app_spacing.dart';
import 'package:skillmatch/core/design_system/typography/app_text_styles.dart';
import 'package:skillmatch/core/design_system/widgets/text/app_text.dart';
import 'package:skillmatch/features/saved_jobs/domain/entities/job_application.dart';

enum SavedJobsSort { recommended, bestMatch, title }

class SavedJobsFilterRow extends StatelessWidget {
  const SavedJobsFilterRow({
    super.key,
    required this.isAppliedTab,
    required this.itemCount,
    required this.sort,
    required this.status,
    required this.onSortChanged,
    required this.onStatusChanged,
  });

  final bool isAppliedTab;
  final int itemCount;
  final SavedJobsSort sort;
  final JobApplicationStatus? status;
  final ValueChanged<SavedJobsSort> onSortChanged;
  final ValueChanged<JobApplicationStatus?> onStatusChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        AppSpacing.space16.w,
        AppSpacing.space16.h,
        AppSpacing.space16.w,
        10.h,
      ),
      child: Row(
        children: [
          Expanded(
            child: AppText(
              isAppliedTab
                  ? '$itemCount applications'
                  : '$itemCount ${itemCount == 1 ? 'saved opportunity' : 'saved opportunities'}',
              style: AppTextStyles.bodySmall.copyWith(
                color: AppColors.textPrimary,
                fontSize: 12.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          if (isAppliedTab)
            _StatusFilter(selectedStatus: status, onSelected: onStatusChanged)
          else
            _SortFilter(selectedSort: sort, onSelected: onSortChanged),
        ],
      ),
    );
  }
}

class _SortFilter extends StatelessWidget {
  const _SortFilter({required this.selectedSort, required this.onSelected});

  final SavedJobsSort selectedSort;
  final ValueChanged<SavedJobsSort> onSelected;

  @override
  Widget build(BuildContext context) {
    final label = switch (selectedSort) {
      SavedJobsSort.recommended => 'Recommended',
      SavedJobsSort.bestMatch => 'Best match',
      SavedJobsSort.title => 'Title A–Z',
    };

    return PopupMenuButton<SavedJobsSort>(
      onSelected: onSelected,
      padding: EdgeInsets.zero,
      itemBuilder: (context) => const [
        PopupMenuItem(
          value: SavedJobsSort.recommended,
          child: Text('Recommended'),
        ),
        PopupMenuItem(
          value: SavedJobsSort.bestMatch,
          child: Text('Best match'),
        ),
        PopupMenuItem(value: SavedJobsSort.title, child: Text('Title A–Z')),
      ],
      child: _FilterLabel(icon: Icons.tune_rounded, label: label),
    );
  }
}

class _StatusFilter extends StatelessWidget {
  const _StatusFilter({required this.selectedStatus, required this.onSelected});

  final JobApplicationStatus? selectedStatus;
  final ValueChanged<JobApplicationStatus?> onSelected;

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      onSelected: (value) => onSelected(
        value == 'all' ? null : JobApplicationStatus.values.byName(value),
      ),
      padding: EdgeInsets.zero,
      itemBuilder: (context) => [
        const PopupMenuItem(value: 'all', child: Text('All statuses')),
        ...JobApplicationStatus.values.map(
          (status) => PopupMenuItem(
            value: status.name,
            child: Text(_statusLabel(status)),
          ),
        ),
      ],
      child: _FilterLabel(
        icon: Icons.filter_list_rounded,
        label: selectedStatus == null
            ? 'All statuses'
            : _statusLabel(selectedStatus!),
      ),
    );
  }
}

class _FilterLabel extends StatelessWidget {
  const _FilterLabel({required this.icon, required this.label});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: 16.r, color: AppColors.textSecondary),
        SizedBox(width: 4.w),
        AppText(
          label,
          style: AppTextStyles.labelMedium.copyWith(
            color: AppColors.textSecondary,
            fontSize: 11.sp,
          ),
        ),
      ],
    );
  }
}

String _statusLabel(JobApplicationStatus status) => switch (status) {
  JobApplicationStatus.applied => 'Applied',
  JobApplicationStatus.inReview => 'In Review',
  JobApplicationStatus.interview => 'Interview',
  JobApplicationStatus.rejected => 'Rejected',
  JobApplicationStatus.offer => 'Offer',
};
