import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:skillmatch/core/design_system/colors/app_colors.dart';
import 'package:skillmatch/core/design_system/spacing/app_radius.dart';
import 'package:skillmatch/core/design_system/typography/app_text_styles.dart';
import 'package:skillmatch/features/home/domain/entities/job_listing.dart';
import 'package:skillmatch/features/home/presentation/utils/home_text_style.dart';

class JobListingCard extends StatelessWidget {
  const JobListingCard({
    super.key,
    required this.job,
    required this.isSaved,
    required this.onSave,
    required this.onApply,
  });

  final JobListing job;
  final bool isSaved;
  final VoidCallback onSave;
  final VoidCallback onApply;

  @override
  Widget build(BuildContext context) {
    final isStrongMatch = job.matchStrength >= 85;
    final matchColor = isStrongMatch ? AppColors.success : AppColors.warning;
    final matchBackground = isStrongMatch
        ? AppColors.successContainer
        : AppColors.warningContainer;

    return Container(
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(AppRadius.radius12.r),
        border: Border.all(color: AppColors.border),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: .035),
            blurRadius: 8.r,
            offset: Offset(0, 3.h),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 40.w,
                height: 40.h,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: job.brandColor.withValues(alpha: .07),
                  borderRadius: BorderRadius.circular(9.r),
                  border: Border.all(
                    color: job.brandColor.withValues(alpha: .22),
                  ),
                ),
                child: Text(
                  job.initials,
                  style: homeTextStyle(
                    AppTextStyles.titleSmall.copyWith(
                      color: job.brandColor,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 12.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      job.title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: homeTextStyle(
                        AppTextStyles.titleSmall.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    SizedBox(height: 2.h),
                    Text(
                      job.company,
                      style: homeTextStyle(
                        AppTextStyles.bodySmall.copyWith(
                          color: AppColors.textSecondary,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              IconButton(
                onPressed: onSave,
                tooltip: isSaved ? 'Remove saved job' : 'Save job',
                visualDensity: VisualDensity.compact,
                constraints: BoxConstraints.tightFor(width: 34.w, height: 38.h),
                padding: EdgeInsets.zero,
                icon: Icon(
                  isSaved
                      ? Icons.bookmark_rounded
                      : Icons.bookmark_border_rounded,
                  color: isSaved
                      ? AppColors.secondary
                      : AppColors.textSecondary,
                  size: 20.r,
                ),
              ),
            ],
          ),
          SizedBox(height: 10.h),
          Wrap(
            spacing: 7.w,
            runSpacing: 6.h,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              _JobTag(job.location),
              const _MetadataDot(),
              _JobTag(job.experience),
              if (job.employmentType.isNotEmpty) ...[
                const _MetadataDot(),
                _JobTag(job.employmentType),
              ],
              if (job.workArrangement.isNotEmpty) ...[
                Text(
                  job.workArrangement,
                  style: homeTextStyle(
                    AppTextStyles.labelSmall.copyWith(
                      color: AppColors.textPrimary,
                    ),
                  ),
                ),
                const _MetadataDot(),
              ],
              Text(
                job.posted,
                style: homeTextStyle(
                  AppTextStyles.labelSmall.copyWith(
                    color: AppColors.textSecondary,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 12.h),
          Divider(height: 1.h, color: AppColors.border),
          SizedBox(height: 12.h),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 8.w,
                        vertical: 3.h,
                      ),
                      decoration: BoxDecoration(
                        color: matchBackground,
                        borderRadius: BorderRadius.circular(20.r),
                      ),
                      child: Text(
                        '• ${job.matchLabel}',
                        style: AppTextStyles.labelSmall.copyWith(
                          color: matchColor,
                          fontWeight: FontWeight.w600,
                          fontSize: 10.sp,
                        ),
                      ),
                    ),
                    SizedBox(height: 4.h),
                    Text(
                      job.matchDescription,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: AppTextStyles.labelSmall.copyWith(
                        color: AppColors.textSecondary,
                        fontSize: 10.sp,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 8.w),
              SizedBox(
                height: 34.h,
                child: FilledButton(
                  onPressed: onApply,
                  style: FilledButton.styleFrom(
                    backgroundColor: AppColors.primary,
                    foregroundColor: AppColors.onPrimary,
                    padding: EdgeInsets.symmetric(horizontal: 14.w),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    textStyle: homeTextStyle(AppTextStyles.labelMedium),
                  ),
                  child: const Text('Apply Now'),
                ),
              ),
            ],
          ),
        ],
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
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
      decoration: BoxDecoration(
        color: AppColors.surfaceLow,
        borderRadius: BorderRadius.circular(6.r),
        border: Border.all(color: AppColors.border),
      ),
      child: Text(
        label,
        style: homeTextStyle(
          AppTextStyles.labelSmall.copyWith(color: AppColors.textSecondary),
        ),
      ),
    );
  }
}

class _MetadataDot extends StatelessWidget {
  const _MetadataDot();

  @override
  Widget build(BuildContext context) => Text(
    '•',
    style: homeTextStyle(
      AppTextStyles.labelSmall.copyWith(color: AppColors.textSecondary),
    ),
  );
}
