import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:skillmatch/core/design_system/colors/app_colors.dart';
import 'package:skillmatch/core/design_system/widgets/layout/app_card.dart';
import 'package:skillmatch/core/design_system/widgets/text/app_text.dart';
import 'package:skillmatch/features/profile/presentation/widgets/profile_section_card.dart';

class ProfileCvSection extends StatelessWidget {
  const ProfileCvSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ProfileSectionCard(
      title: 'CV',
      status: 'Good',
      trailing: IconButton(
        onPressed: () {},
        icon: const Icon(Icons.edit_outlined),
        padding: EdgeInsets.zero,
        constraints: const BoxConstraints(),
      ),
      children: [
        AppCard(
          padding: EdgeInsets.all(12.r),
          borderRadius: 12.r,
          backgroundColor: AppColors.surfaceContainer,
          child: Row(
            children: [
              Container(
                width: 32.r,
                height: 32.r,
                decoration: BoxDecoration(
                  color: AppColors.primaryFixed,
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: const Icon(
                  Icons.description_outlined,
                  color: AppColors.primary,
                ),
              ),
              SizedBox(width: 10.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText(
                      'Ahmed_Mohamed_CV.pdf',
                      style: Theme.of(context).textTheme.bodyMedium,
                      fontWeight: FontWeight.w600,
                      color: AppColors.textPrimary,
                    ),
                    SizedBox(height: 4.h),
                    AppText(
                      'Analyzed • Updated 5 days ago',
                      style: Theme.of(context).textTheme.bodySmall,
                      color: AppColors.textSecondary,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 12.h),
        Row(
          children: [
            Expanded(
              child: OutlinedButton(
                onPressed: () {},
                child: const Text('View CV'),
              ),
            ),
            SizedBox(width: 10.w),
            Expanded(
              child: OutlinedButton(
                onPressed: () {},
                child: const Text('Replace CV'),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
