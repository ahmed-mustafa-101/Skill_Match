import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:skillmatch/core/design_system/colors/app_colors.dart';
import 'package:skillmatch/core/design_system/spacing/app_spacing.dart';
import 'package:skillmatch/core/design_system/typography/app_text_styles.dart';
import 'package:skillmatch/features/home/data/job_sample_data.dart';
import 'package:skillmatch/features/home/presentation/state/saved_jobs_cubit.dart';
import 'package:skillmatch/features/home/presentation/utils/home_text_style.dart';
import 'package:skillmatch/features/home/presentation/widgets/job_listing_card.dart';
import 'package:skillmatch/features/home/presentation/utils/home_job_localization.dart';
import 'package:skillmatch/core/extensions/build_context_localization.dart';

class SavedJobsScreen extends StatelessWidget {
  const SavedJobsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final savedJobIds = context.watch<SavedJobsCubit>().state;
    final jobs = JobSampleData.recommendations
        .where((job) => savedJobIds.contains(job.id))
        .toList();

    return SafeArea(
      bottom: false,
      child: Align(
        alignment: Alignment.topCenter,
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 680),
          child: CustomScrollView(
            slivers: [
              SliverPadding(
                padding: EdgeInsets.fromLTRB(
                  AppSpacing.space16.w,
                  AppSpacing.space16.h,
                  AppSpacing.space16.w,
                  AppSpacing.space16.h,
                ),
                sliver: SliverList(
                  delegate: SliverChildListDelegate([
                    Text(
                      context.l10n.savedJobs,
                      style: homeTextStyle(AppTextStyles.sectionHeading),
                    ),
                    SizedBox(height: AppSpacing.space16.h),
                    if (jobs.isEmpty)
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 64.h),
                        child: Column(
                          children: [
                            Icon(
                              Icons.bookmark_border_rounded,
                              size: 42.r,
                              color: AppColors.textSecondary,
                            ),
                            SizedBox(height: 12.h),
                            Text(
                              context.l10n.noSavedJobs,
                              style: homeTextStyle(
                                AppTextStyles.titleMedium.copyWith(
                                  color: AppColors.textSecondary,
                                ),
                              ),
                            ),
                            SizedBox(height: 4.h),
                            Text(
                              context.l10n.saveJobHint,
                              textAlign: TextAlign.center,
                              style: homeTextStyle(
                                AppTextStyles.bodySmall.copyWith(
                                  color: AppColors.textSecondary,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    else
                      ...jobs.map(
                        (job) => Padding(
                          padding: EdgeInsets.only(bottom: 12.h),
                          child: JobListingCard(
                            job: job,
                            isSaved: true,
                            onSave: () => context
                                .read<SavedJobsCubit>()
                                .toggleSaved(job.id),
                            onApply: () => ScaffoldMessenger.of(context)
                              ..hideCurrentSnackBar()
                              ..showSnackBar(
                                SnackBar(
                                  content: Text(
                                    context.l10n.applicationComingSoon(
                                      job.localizedTitle(context.l10n),
                                    ),
                                  ),
                                ),
                              ),
                          ),
                        ),
                      ),
                  ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
