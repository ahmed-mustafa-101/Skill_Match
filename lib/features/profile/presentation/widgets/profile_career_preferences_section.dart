import 'package:flutter/material.dart';
import 'package:skillmatch/features/profile/presentation/widgets/profile_preferences_row.dart';
import 'package:skillmatch/features/profile/presentation/widgets/profile_section_card.dart';

class ProfileCareerPreferencesSection extends StatelessWidget {
  const ProfileCareerPreferencesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ProfileSectionCard(
      title: 'Career Preferences',
      trailing: IconButton(
        onPressed: () {},
        icon: const Icon(Icons.edit_outlined),
        padding: EdgeInsets.zero,
        constraints: const BoxConstraints(),
      ),
      children: const [
        ProfilePreferencesRow(label: 'Target role', value: 'Flutter Developer'),
        ProfilePreferencesRow(
          label: 'Job type',
          value: 'Full-time / Internship',
        ),
        ProfilePreferencesRow(label: 'Preferred location', value: 'Cairo'),
        ProfilePreferencesRow(label: 'Experience', value: 'Entry Level'),
      ],
    );
  }
}
