import 'package:skillmatch/features/home/domain/entities/job_listing.dart';

abstract final class HomeJobFilter {
  static const filters = ['All jobs', 'Full-time', 'Internship', 'Remote'];

  static List<JobListing> apply({
    required Iterable<JobListing> jobs,
    required String query,
    required String selectedFilter,
    required bool showAll,
  }) {
    final normalizedQuery = query.trim().toLowerCase();
    final filteredJobs = jobs.where((job) {
      final matchesSearch =
          normalizedQuery.isEmpty ||
          job.title.toLowerCase().contains(normalizedQuery) ||
          job.company.toLowerCase().contains(normalizedQuery) ||
          job.location.toLowerCase().contains(normalizedQuery);
      final matchesFilter = switch (selectedFilter) {
        'Full-time' => job.employmentType == 'Full-time',
        'Internship' => job.experience == 'Internship',
        'Remote' => job.location == 'Remote' || job.workArrangement == 'Remote',
        _ => true,
      };
      return matchesSearch && matchesFilter;
    });

    return showAll ? filteredJobs.toList() : filteredJobs.take(3).toList();
  }
}
