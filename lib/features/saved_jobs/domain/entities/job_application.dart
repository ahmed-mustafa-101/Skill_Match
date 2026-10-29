import 'package:skillmatch/features/home/domain/entities/job_listing.dart';

enum JobApplicationStatus { applied, inReview, interview, rejected, offer }

class JobApplication {
  const JobApplication({
    required this.job,
    required this.appliedAt,
    required this.status,
    required this.progressLabel,
    this.alertMessage,
  });

  final JobListing job;
  final String appliedAt;
  final JobApplicationStatus status;
  final String progressLabel;
  final String? alertMessage;
}
