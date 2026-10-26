import 'package:skillmatch/features/home/domain/entities/job_listing.dart';
import 'package:skillmatch/generated/l10n.dart';

extension HomeJobLocalization on JobListing {
  String localizedTitle(S l10n) => switch (id) {
    'junior-flutter-developer' => l10n.juniorFlutterDeveloper,
    'mobile-developer-intern' => l10n.mobileDeveloperIntern,
    'junior-software-engineer' => l10n.juniorSoftwareEngineer,
    'frontend-developer' => l10n.frontendDeveloper,
    'product-design-intern' => l10n.productDesignIntern,
    _ => title,
  };

  String localizedLocation(S l10n) => switch (location) {
    'Cairo' => l10n.cairo,
    'Giza' => l10n.giza,
    'Remote' => l10n.remote,
    _ => location,
  };

  String localizedExperience(S l10n) => switch (experience) {
    '0–2 years' => l10n.experienceTwoYears,
    'Internship' => l10n.experienceInternship,
    'Entry Level' => l10n.experienceEntryLevel,
    '1–3 years' => l10n.experienceOneToThreeYears,
    _ => experience,
  };

  String localizedEmploymentType(S l10n) => switch (employmentType) {
    'Full-time' => l10n.fullTime,
    'Internship' => l10n.experienceInternship,
    _ => employmentType,
  };

  String localizedPosted(S l10n) => switch (posted) {
    'Posted 2 days ago' => l10n.postedTwoDaysAgo,
    'Posted today' => l10n.postedToday,
    'Posted 3 days ago' => l10n.postedThreeDaysAgo,
    'Posted yesterday' => l10n.postedYesterday,
    'Posted 4 days ago' => l10n.postedFourDaysAgo,
    _ => posted,
  };

  String localizedWorkArrangement(S l10n) => switch (workArrangement) {
    'Hybrid' => l10n.hybrid,
    'Remote' => l10n.remote,
    _ => workArrangement,
  };

  String localizedMatchLabel(S l10n) => switch (matchLabel) {
    'Strong Match' => l10n.strongMatch,
    'Good Match' => l10n.goodMatch,
    'Potential Match' => l10n.potentialMatch,
    _ => matchLabel,
  };

  String localizedMatchDescription(S l10n) => switch (matchDescription) {
    'Matches your Flutter & REST API skills' => l10n.matchFlutterRest,
    'Recommended based on your target role' => l10n.matchTargetRole,
    'Matches problem solving skills' => l10n.matchProblemSolving,
    'Matches your web development skills' => l10n.matchWebDevelopment,
    'Build on your design fundamentals' => l10n.matchDesignFundamentals,
    _ => matchDescription,
  };
}
