import 'package:flutter/material.dart';
import 'package:skillmatch/features/profile/presentation/widgets/profile_preferences_row.dart';
import 'package:skillmatch/features/profile/presentation/widgets/profile_section_card.dart';
import 'package:skillmatch/core/extensions/build_context_localization.dart';

class ProfileCareerPreferencesSection extends StatelessWidget {
  const ProfileCareerPreferencesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ProfileSectionCard(
      title: context.l10n.profileCareerPreferences,
      trailing: IconButton(
        onPressed: () {},
        icon: const Icon(Icons.edit_outlined),
        padding: EdgeInsets.zero,
        constraints: const BoxConstraints(),
      ),
      children: [
        ProfilePreferencesRow(
          label: context.l10n.profileTargetRole,
          value: context.l10n.roadmapRoleFlutterDeveloper,
        ),
        ProfilePreferencesRow(
          label: context.l10n.profileJobType,
          value: context.l10n.profileFullTimeInternship,
        ),
        ProfilePreferencesRow(
          label: context.l10n.profilePreferredLocation,
          value: context.l10n.cairo,
        ),
        ProfilePreferencesRow(
          label: context.l10n.profileExperience,
          value: context.l10n.profileEntryLevel,
        ),
      ],
    );
  }
}
