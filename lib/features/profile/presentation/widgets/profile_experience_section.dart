import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:skillmatch/core/design_system/colors/app_colors.dart';
import 'package:skillmatch/core/design_system/widgets/text/app_text.dart';
import 'package:skillmatch/core/extensions/build_context_localization.dart';
import 'package:skillmatch/features/profile/presentation/widgets/profile_chip.dart';
import 'package:skillmatch/features/profile/presentation/widgets/profile_section_card.dart';

class ProfileExperienceSection extends StatelessWidget {
  const ProfileExperienceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ProfileSectionCard(
      title: context.l10n.profileExperienceSection,
      status: context.l10n.profileCvGood,
      trailing: IconButton(
        onPressed: () {},
        icon: const Icon(Icons.edit_outlined),
        padding: EdgeInsets.zero,
        constraints: const BoxConstraints(),
      ),
      children: [
        Row(
          children: [
            Expanded(
              child: AppText(
                context.l10n.flutterDeveloperIntern,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                color: AppColors.textPrimary,
              ),
            ),
            AppText(
              context.l10n.profileExperienceDates,
              style: Theme.of(context).textTheme.bodySmall,
              color: AppColors.textSecondary,
            ),
          ],
        ),
        SizedBox(height: 6.h),
        AppText(
          context.l10n.profileTechSolutions,
          style: Theme.of(context).textTheme.bodyMedium,
          color: AppColors.textSecondary,
        ),
        SizedBox(height: 8.h),
        AppText(
          context.l10n.profileExperienceDescription,
          style: Theme.of(context).textTheme.bodyMedium,
          color: AppColors.textPrimary,
        ),
        SizedBox(height: 10.h),
        Wrap(
          spacing: 8.w,
          runSpacing: 8.h,
          children: const [
            ProfileChip(label: 'Flutter'),
            ProfileChip(label: 'Dart'),
            ProfileChip(label: 'REST APIs'),
          ],
        ),
      ],
    );
  }
}
