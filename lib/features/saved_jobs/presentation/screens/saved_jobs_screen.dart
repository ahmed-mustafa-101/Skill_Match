import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:skillmatch/features/home/data/job_sample_data.dart';
import 'package:skillmatch/features/home/domain/entities/job_listing.dart';
import 'package:skillmatch/features/saved_jobs/data/applied_job_sample_data.dart';
import 'package:skillmatch/features/saved_jobs/domain/entities/job_application.dart';
import 'package:skillmatch/features/saved_jobs/presentation/state/saved_jobs_cubit.dart';
import 'package:skillmatch/features/saved_jobs/presentation/widgets/applied_job_card.dart';
import 'package:skillmatch/features/saved_jobs/presentation/widgets/saved_job_card.dart';
import 'package:skillmatch/features/saved_jobs/presentation/widgets/saved_jobs_empty_state.dart';
import 'package:skillmatch/features/saved_jobs/presentation/widgets/saved_jobs_filter_row.dart';
import 'package:skillmatch/features/saved_jobs/presentation/widgets/saved_jobs_header.dart';
import 'package:skillmatch/features/saved_jobs/presentation/widgets/saved_jobs_tab_switcher.dart';

class SavedJobsScreen extends StatefulWidget {
  const SavedJobsScreen({super.key});

  @override
  State<SavedJobsScreen> createState() => _SavedJobsScreenState();
}

class _SavedJobsScreenState extends State<SavedJobsScreen> {
  final TextEditingController _searchController = TextEditingController();
  int _selectedTab = 0;
  bool _isSearching = false;
  String _query = '';
  SavedJobsSort _savedJobsSort = SavedJobsSort.recommended;
  JobApplicationStatus? _applicationStatus;

  bool get _isAppliedTab => _selectedTab == 1;

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final savedJobIds = context.watch<SavedJobsCubit>().state;
    final savedJobs = _visibleSavedJobs(savedJobIds);
    final applications = _visibleApplications();

    return SafeArea(
      bottom: false,
      child: Column(
        children: [
          SavedJobsHeader(
            searchController: _searchController,
            isSearching: _isSearching,
            onSearchPressed: _toggleSearch,
            onSearchChanged: (value) => setState(() => _query = value),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: SavedJobsTabSwitcher(
              selectedIndex: _selectedTab,
              onChanged: (index) => setState(() => _selectedTab = index),
            ),
          ),
          SizedBox(height: 4.h),
          Expanded(
            child: ListView(
              keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
              padding: EdgeInsets.only(bottom: 20.h),
              children: [
                SavedJobsFilterRow(
                  isAppliedTab: _isAppliedTab,
                  itemCount: _isAppliedTab
                      ? applications.length
                      : savedJobs.length,
                  sort: _savedJobsSort,
                  status: _applicationStatus,
                  onSortChanged: (sort) =>
                      setState(() => _savedJobsSort = sort),
                  onStatusChanged: (status) =>
                      setState(() => _applicationStatus = status),
                ),
                if (_isAppliedTab)
                  if (applications.isEmpty)
                    const SavedJobsEmptyState(isAppliedTab: true)
                  else
                    ...applications.map(
                      (application) => Padding(
                        padding: EdgeInsets.fromLTRB(16.w, 0, 16.w, 10.h),
                        child: AppliedJobCard(
                          application: application,
                          onView: () => _showComingSoon(
                            'Application details are coming soon.',
                          ),
                        ),
                      ),
                    )
                else if (savedJobs.isEmpty)
                  const SavedJobsEmptyState(isAppliedTab: false)
                else
                  ...savedJobs.map(
                    (job) => Padding(
                      padding: EdgeInsets.fromLTRB(16.w, 0, 16.w, 10.h),
                      child: SavedJobCard(
                        job: job,
                        onRemove: () =>
                            context.read<SavedJobsCubit>().toggleSaved(job.id),
                        onApply: () => _showComingSoon(
                          'Application for ${job.title} is coming soon.',
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  List<JobListing> _visibleSavedJobs(Set<String> savedJobIds) {
    final query = _query.trim().toLowerCase();
    final jobs = JobSampleData.recommendations
        .where((job) => savedJobIds.contains(job.id))
        .where(
          (job) =>
              query.isEmpty ||
              job.title.toLowerCase().contains(query) ||
              job.company.toLowerCase().contains(query),
        )
        .toList();

    switch (_savedJobsSort) {
      case SavedJobsSort.recommended:
        break;
      case SavedJobsSort.bestMatch:
        jobs.sort(
          (first, second) =>
              second.matchStrength.compareTo(first.matchStrength),
        );
      case SavedJobsSort.title:
        jobs.sort((first, second) => first.title.compareTo(second.title));
    }

    return jobs;
  }

  List<JobApplication> _visibleApplications() {
    final query = _query.trim().toLowerCase();
    return AppliedJobSampleData.applications
        .where(
          (application) =>
              _applicationStatus == null ||
              application.status == _applicationStatus,
        )
        .where(
          (application) =>
              query.isEmpty ||
              application.job.title.toLowerCase().contains(query) ||
              application.job.company.toLowerCase().contains(query),
        )
        .toList();
  }

  void _toggleSearch() {
    setState(() {
      _isSearching = !_isSearching;
      if (!_isSearching) {
        _query = '';
        _searchController.clear();
      }
    });
  }

  void _showComingSoon(String message) {
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(SnackBar(content: Text(message)));
  }
}
