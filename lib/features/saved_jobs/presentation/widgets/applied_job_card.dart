import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:skillmatch/core/design_system/colors/app_colors.dart';
import 'package:skillmatch/core/design_system/spacing/app_radius.dart';
import 'package:skillmatch/core/design_system/spacing/app_spacing.dart';
import 'package:skillmatch/core/design_system/typography/app_text_styles.dart';
import 'package:skillmatch/core/design_system/widgets/layout/app_card.dart';
import 'package:skillmatch/core/design_system/widgets/text/app_text.dart';
import 'package:skillmatch/features/home/domain/entities/job_listing.dart';
import 'package:skillmatch/features/saved_jobs/domain/entities/job_application.dart';

class AppliedJobCard extends StatelessWidget {
  const AppliedJobCard({
    super.key,
    required this.application,
    required this.onView,
  });

  final JobApplication application;
  final VoidCallback onView;

  @override
  Widget build(BuildContext context) {
    final job = application.job;
    final statusColor = _statusColor(application.status);
    final statusBackground = _statusBackground(application.status);
    final isStrongMatch = job.matchStrength >= 85;
    final matchColor = isStrongMatch ? AppColors.success : AppColors.warning;
    final matchBackground = isStrongMatch
        ? AppColors.successContainer
        : AppColors.warningContainer;

    return AppCard(
      padding: EdgeInsets.all(AppSpacing.space12.w),
      borderRadius: AppRadius.radius12.r,
      boxShadow: const [],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              _CompanyLogo(job: job),
              SizedBox(width: 10.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText(
                      job.title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: AppTextStyles.titleSmall.copyWith(
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: AppSpacing.space2.h),
                    AppText(
                      job.company,
                      style: AppTextStyles.bodySmall.copyWith(
                        color: AppColors.textSecondary,
                        fontSize: 11.sp,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 6.w),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 5.h),
                decoration: BoxDecoration(
                  color: statusBackground,
                  border: Border.all(color: statusColor.withValues(alpha: .25)),
                  borderRadius: BorderRadius.circular(20.r),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.circle, size: 6.r, color: statusColor),
                    SizedBox(width: AppSpacing.space4.w),
                    AppText(
                      _statusLabel(application.status),
                      style: AppTextStyles.labelSmall.copyWith(
                        color: statusColor,
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: AppSpacing.space8.h),
          Wrap(
            spacing: 6.w,
            runSpacing: 6.h,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              if (job.location.isNotEmpty) _JobTag(job.location),
              if (job.experience.isNotEmpty) _JobTag(job.experience),
              if (job.employmentType.isNotEmpty) _JobTag(job.employmentType),
              AppText(
                application.appliedAt,
                style: AppTextStyles.labelSmall.copyWith(
                  color: AppColors.textSecondary,
                  fontSize: 10.sp,
                ),
              ),
            ],
          ),
          SizedBox(height: AppSpacing.space12.h),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 7.w, vertical: 3.h),
            decoration: BoxDecoration(
              color: matchBackground,
              borderRadius: BorderRadius.circular(20.r),
            ),
            child: AppText(
              '• ${job.matchLabel}',
              style: AppTextStyles.labelSmall.copyWith(
                color: matchColor,
                fontSize: 10.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          if (application.alertMessage case final message?) ...[
            SizedBox(height: AppSpacing.space8.h),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 9.w, vertical: 8.h),
              decoration: BoxDecoration(
                color: AppColors.warningContainer,
                border: Border.all(
                  color: AppColors.accent.withValues(alpha: .3),
                ),
                borderRadius: BorderRadius.circular(AppRadius.radius8.r),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.calendar_month_outlined,
                    size: 15.r,
                    color: AppColors.warning,
                  ),
                  SizedBox(width: 6.w),
                  Expanded(
                    child: AppText(
                      message,
                      style: AppTextStyles.labelSmall.copyWith(
                        color: AppColors.onWarningContainer,
                        fontSize: 10.sp,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ] else
            SizedBox(height: 10.h),
          Divider(height: 1.h, color: AppColors.border),
          SizedBox(height: AppSpacing.space8.h),
          Row(
            children: [
              Expanded(
                child: AppText(
                  application.progressLabel,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: AppTextStyles.labelSmall.copyWith(
                    color: AppColors.textSecondary,
                    fontSize: 10.sp,
                  ),
                ),
              ),
              TextButton(
                onPressed: onView,
                style: TextButton.styleFrom(
                  foregroundColor: AppColors.primary,
                  padding: EdgeInsets.zero,
                  minimumSize: Size(0, 30.h),
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  textStyle: AppTextStyles.labelMedium.copyWith(
                    fontSize: 11.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text('View application'),
                    SizedBox(width: AppSpacing.space2.w),
                    Icon(Icons.chevron_right_rounded, size: 18.r),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _CompanyLogo extends StatelessWidget {
  const _CompanyLogo({required this.job});

  final JobListing job;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 36.r,
      height: 36.r,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: job.brandColor.withValues(alpha: .07),
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(color: job.brandColor.withValues(alpha: .22)),
      ),
      child: AppText(
        job.initials,
        style: AppTextStyles.labelMedium.copyWith(
          color: job.brandColor,
          fontWeight: FontWeight.w700,
          fontSize: 10.sp,
        ),
      ),
    );
  }
}

class _JobTag extends StatelessWidget {
  const _JobTag(this.label);

  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 7.w, vertical: 3.h),
      decoration: BoxDecoration(
        color: AppColors.surfaceLow,
        borderRadius: BorderRadius.circular(6.r),
        border: Border.all(color: AppColors.border),
      ),
      child: AppText(
        label,
        style: AppTextStyles.labelSmall.copyWith(
          color: AppColors.textSecondary,
          fontSize: 10.sp,
        ),
      ),
    );
  }
}

Color _statusColor(JobApplicationStatus status) => switch (status) {
  JobApplicationStatus.applied => AppColors.primary,
  JobApplicationStatus.inReview => AppColors.secondary,
  JobApplicationStatus.interview => AppColors.warning,
  JobApplicationStatus.rejected => AppColors.error,
  JobApplicationStatus.offer => AppColors.success,
};

Color _statusBackground(JobApplicationStatus status) => switch (status) {
  JobApplicationStatus.applied => AppColors.primaryFixed,
  JobApplicationStatus.inReview => AppColors.secondaryContainer,
  JobApplicationStatus.interview => AppColors.warningContainer,
  JobApplicationStatus.rejected => AppColors.errorContainer,
  JobApplicationStatus.offer => AppColors.successContainer,
};

String _statusLabel(JobApplicationStatus status) => switch (status) {
  JobApplicationStatus.applied => 'Applied',
  JobApplicationStatus.inReview => 'In Review',
  JobApplicationStatus.interview => 'Interview',
  JobApplicationStatus.rejected => 'Rejected',
  JobApplicationStatus.offer => 'Offer',
};
