import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:skillmatch/core/design_system/colors/app_colors.dart';
import 'package:skillmatch/core/design_system/widgets/layout/app_card.dart';
import 'package:skillmatch/core/design_system/widgets/text/app_text.dart';
import 'package:skillmatch/features/profile/presentation/widgets/profile_chip.dart';
import 'package:skillmatch/features/profile/presentation/widgets/profile_section_card.dart';

class ProfileProjectsSection extends StatelessWidget {
  const ProfileProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ProfileSectionCard(
      title: 'Projects',
      status: 'Needs Improvement',
      trailing: IconButton(
        onPressed: () {},
        icon: const Icon(Icons.edit_outlined),
        padding: EdgeInsets.zero,
        constraints: const BoxConstraints(),
      ),
      children: [
        const AppText(
          'Job Finder App',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
          color: AppColors.textPrimary,
        ),
        SizedBox(height: 6.h),
        AppText(
          'Flutter application for discovering and saving job opportunities.',
          style: Theme.of(context).textTheme.bodyMedium,
          color: AppColors.textPrimary,
        ),
        SizedBox(height: 10.h),
        Wrap(
          spacing: 8.w,
          runSpacing: 8.h,
          children: const [
            ProfileChip(label: 'Flutter'),
            ProfileChip(label: 'REST API'),
            ProfileChip(label: 'Bloc'),
          ],
        ),
        SizedBox(height: 12.h),
        AppText(
          'View project →',
          style: Theme.of(context).textTheme.labelLarge,
          color: AppColors.primary,
          fontWeight: FontWeight.w600,
        ),
        SizedBox(height: 12.h),
        AppCard(
          padding: EdgeInsets.all(12.r),
          borderRadius: 12.r,
          backgroundColor: AppColors.surfaceContainer,
          child: Row(
            children: [
              const Icon(Icons.info_outline, color: AppColors.primary),
              SizedBox(width: 8.w),
              Expanded(
                child: AppText(
                  'Add measurable outcomes or project links to strengthen this section.',
                  style: Theme.of(context).textTheme.bodySmall,
                  color: AppColors.textSecondary,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
