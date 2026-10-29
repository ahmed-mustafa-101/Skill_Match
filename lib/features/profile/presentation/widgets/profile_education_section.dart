import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:skillmatch/core/design_system/colors/app_colors.dart';
import 'package:skillmatch/core/design_system/widgets/text/app_text.dart';
import 'package:skillmatch/features/profile/presentation/widgets/profile_section_card.dart';

class ProfileEducationSection extends StatelessWidget {
  const ProfileEducationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ProfileSectionCard(
      title: 'Education',
      status: 'Excellent',
      trailing: IconButton(
        onPressed: () {},
        icon: const Icon(Icons.edit_outlined),
        padding: EdgeInsets.zero,
        constraints: const BoxConstraints(),
      ),
      children: [
        const AppText(
          'Bachelor of Computer Science',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
          color: AppColors.textPrimary,
        ),
        SizedBox(height: 4.h),
        AppText(
          'Cairo University',
          style: Theme.of(context).textTheme.bodyMedium,
          color: AppColors.textSecondary,
        ),
        SizedBox(height: 6.h),
        AppText(
          '2021 – 2025 • GPA: 3.4 / 4.0',
          style: Theme.of(context).textTheme.bodySmall,
          color: AppColors.textSecondary,
        ),
      ],
    );
  }
}
