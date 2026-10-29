import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:skillmatch/core/design_system/colors/app_colors.dart';
import 'package:skillmatch/core/design_system/widgets/text/app_text.dart';
import 'package:skillmatch/features/profile/presentation/widgets/profile_chip.dart';
import 'package:skillmatch/features/profile/presentation/widgets/profile_section_card.dart';

class ProfileSkillsSection extends StatelessWidget {
  const ProfileSkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ProfileSectionCard(
      title: 'Skills',
      status: 'Excellent',
      trailing: IconButton(
        onPressed: () {},
        icon: const Icon(Icons.edit_outlined),
        padding: EdgeInsets.zero,
        constraints: const BoxConstraints(),
      ),
      children: [
        Row(
          children: [
            const Expanded(
              child: AppText(
                'From CV',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                color: AppColors.textSecondary,
              ),
            ),
            InkWell(
              onTap: () {},
              child: AppText(
                '+ Add skill',
                style: Theme.of(context).textTheme.labelMedium,
                color: AppColors.primary,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        SizedBox(height: 10.h),
        Wrap(
          spacing: 8.w,
          runSpacing: 8.h,
          children: const [
            ProfileChip(label: 'Flutter'),
            ProfileChip(label: 'Dart'),
            ProfileChip(label: 'REST APIs'),
            ProfileChip(label: 'Git'),
            ProfileChip(label: 'GitHub'),
            ProfileChip(label: 'Bloc'),
            ProfileChip(label: 'Firebase'),
          ],
        ),
      ],
    );
  }
}
