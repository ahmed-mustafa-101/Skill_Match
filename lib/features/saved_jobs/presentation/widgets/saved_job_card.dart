import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:skillmatch/core/design_system/colors/app_colors.dart';
import 'package:skillmatch/core/design_system/spacing/app_radius.dart';
import 'package:skillmatch/core/design_system/spacing/app_spacing.dart';
import 'package:skillmatch/core/design_system/typography/app_text_styles.dart';
import 'package:skillmatch/core/design_system/widgets/layout/app_card.dart';
import 'package:skillmatch/core/design_system/widgets/text/app_text.dart';
import 'package:skillmatch/features/home/domain/entities/job_listing.dart';

class SavedJobCard extends StatelessWidget {
  const SavedJobCard({
    super.key,
    required this.job,
    required this.onRemove,
    required this.onApply,
  });

  final JobListing job;
  final VoidCallback onRemove;
  final VoidCallback onApply;

  @override
  Widget build(BuildContext context) {
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
              IconButton(
                onPressed: onRemove,
                tooltip: 'Remove from saved jobs',
                visualDensity: VisualDensity.compact,
                constraints: BoxConstraints.tightFor(width: 32.w, height: 36.h),
                padding: EdgeInsets.zero,
                icon: Icon(
                  Icons.bookmark_rounded,
                  color: AppColors.secondary,
                  size: 20.r,
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
              _JobTag(job.location),
              if (job.experience.isNotEmpty) _JobTag(job.experience),
              if (job.employmentType.isNotEmpty) _JobTag(job.employmentType),
              if (job.workArrangement.isNotEmpty) _JobTag(job.workArrangement),
            ],
          ),
          SizedBox(height: 6.h),
          AppText(
            job.posted,
            style: AppTextStyles.labelSmall.copyWith(
              color: AppColors.textSecondary,
              fontSize: 10.sp,
            ),
          ),
          SizedBox(height: AppSpacing.space12.h),
          Row(
            children: [
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
            ],
          ),
          SizedBox(height: AppSpacing.space4.h),
          AppText(
            job.matchDescription,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: AppTextStyles.labelSmall.copyWith(
              color: AppColors.textSecondary,
              fontSize: 10.sp,
            ),
          ),
          SizedBox(height: AppSpacing.space12.h),
          Divider(height: 1.h, color: AppColors.border),
          SizedBox(height: AppSpacing.space8.h),
          Row(
            children: [
              Expanded(
                child: AppText(
                  'Saved to your list',
                  style: AppTextStyles.labelSmall.copyWith(
                    color: AppColors.textSecondary,
                    fontSize: 10.sp,
                  ),
                ),
              ),
              SizedBox(
                height: 34.h,
                child: FilledButton(
                  onPressed: onApply,
                  style: FilledButton.styleFrom(
                    backgroundColor: AppColors.primary,
                    foregroundColor: AppColors.onPrimary,
                    padding: EdgeInsets.symmetric(horizontal: 14.w),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    textStyle: AppTextStyles.labelMedium.copyWith(
                      fontSize: 11.sp,
                    ),
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
