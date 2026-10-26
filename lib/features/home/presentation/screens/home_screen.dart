import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:skillmatch/core/design_system/spacing/app_spacing.dart';
import 'package:skillmatch/features/home/data/job_sample_data.dart';
import 'package:skillmatch/features/home/domain/entities/job_listing.dart';
import 'package:skillmatch/features/home/presentation/state/saved_jobs_cubit.dart';
import 'package:skillmatch/features/home/presentation/utils/home_job_filter.dart';
import 'package:skillmatch/features/home/presentation/widgets/home_empty_search_state.dart';
import 'package:skillmatch/features/home/presentation/widgets/home_header.dart';
import 'package:skillmatch/features/home/presentation/widgets/home_recommendations_header.dart';
import 'package:skillmatch/features/home/presentation/widgets/home_search_bar.dart';
import 'package:skillmatch/features/home/presentation/widgets/job_listing_card.dart';
import 'package:skillmatch/features/home/presentation/widgets/job_filter_sheet.dart';
import 'package:skillmatch/features/home/presentation/widgets/job_match_banner.dart';
import 'package:skillmatch/core/extensions/build_context_localization.dart';
import 'package:skillmatch/features/home/presentation/utils/home_job_localization.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _searchController = TextEditingController();
  String _query = '';
  String _selectedFilter = 'All jobs';
  bool _showAll = false;

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  List<JobListing> get _visibleJobs {
    return HomeJobFilter.apply(
      jobs: JobSampleData.recommendations,
      query: _query,
      selectedFilter: _selectedFilter,
      showAll: _showAll,
    );
  }

  @override
  Widget build(BuildContext context) {
    final savedJobIds = context.watch<SavedJobsCubit>().state;
    return SafeArea(
      bottom: false,
      child: LayoutBuilder(
        builder: (context, constraints) {
          final horizontalPadding = constraints.maxWidth > 600 ? 32.w : 16.w;
          return Align(
            alignment: Alignment.topCenter,
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 680),
              child: CustomScrollView(
                keyboardDismissBehavior:
                    ScrollViewKeyboardDismissBehavior.onDrag,
                slivers: [
                  SliverPadding(
                    padding: EdgeInsets.fromLTRB(
                      horizontalPadding,
                      10.h,
                      horizontalPadding,
                      AppSpacing.space24.h,
                    ),
                    sliver: SliverList(
                      delegate: SliverChildListDelegate([
                        const HomeHeader(),
                        SizedBox(height: 16.h),
                        HomeSearchBar(
                          controller: _searchController,
                          onChanged: (value) => setState(() => _query = value),
                          onFilter: _showFilters,
                        ),
                        SizedBox(height: 16.h),
                        const JobMatchBanner(),
                        SizedBox(height: 20.h),
                        HomeRecommendationsHeader(
                          showAll: _showAll,
                          onToggleShowAll: () =>
                              setState(() => _showAll = !_showAll),
                        ),
                        SizedBox(height: 12.h),
                        if (_visibleJobs.isEmpty)
                          const HomeEmptySearchState()
                        else
                          ..._visibleJobs.map(
                            (job) => Padding(
                              padding: EdgeInsets.only(bottom: 12.h),
                              child: JobListingCard(
                                job: job,
                                isSaved: savedJobIds.contains(job.id),
                                onSave: () => context
                                    .read<SavedJobsCubit>()
                                    .toggleSaved(job.id),
                                onApply: () => _applyForJob(context, job),
                              ),
                            ),
                          ),
                      ]),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Future<void> _showFilters() async {
    final selectedFilter = await JobFilterSheet.show(
      context,
      selectedFilter: _selectedFilter,
    );
    if (selectedFilter != null && mounted) {
      setState(() {
        _selectedFilter = selectedFilter;
        _showAll = false;
      });
    }
  }

  void _applyForJob(BuildContext context, JobListing job) {
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          content: Text(
            context.l10n.applicationComingSoon(job.localizedTitle(context.l10n)),
          ),
        ),
      );
  }
}
