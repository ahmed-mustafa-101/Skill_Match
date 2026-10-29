import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:skillmatch/core/design_system/colors/app_colors.dart';
import 'package:skillmatch/core/design_system/widgets/layout/app_card.dart';
import 'package:skillmatch/core/design_system/widgets/text/app_text.dart';

class ProfileHeaderCard extends StatelessWidget {
  const ProfileHeaderCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AppCard(
      padding: EdgeInsets.all(14.r),
      borderRadius: 18.r,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 34.r,
                backgroundColor: AppColors.primaryFixed,
                child: const Icon(
                  Icons.person,
                  color: AppColors.primary,
                  size: 32,
                ),
              ),
              SizedBox(width: 14.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText(
                      'Ahmed Mohamed',
                      style: Theme.of(context).textTheme.headlineSmall,
                      fontWeight: FontWeight.w700,
                      color: AppColors.textPrimary,
                    ),
                    SizedBox(height: 4.h),
                    AppText(
                      'Junior Flutter Developer',
                      style: Theme.of(context).textTheme.titleSmall,
                      color: AppColors.textSecondary,
                    ),
                    SizedBox(height: 6.h),
                    Row(
                      children: [
                        const Icon(
                          Icons.location_on_outlined,
                          size: 14,
                          color: AppColors.textSecondary,
                        ),
                        SizedBox(width: 4.w),
                        AppText(
                          'Cairo, Egypt',
                          style: Theme.of(context).textTheme.bodySmall,
                          color: AppColors.textSecondary,
                        ),
                        SizedBox(width: 12.w),
                        const Icon(
                          Icons.work_outline_rounded,
                          size: 14,
                          color: AppColors.textSecondary,
                        ),
                        SizedBox(width: 4.w),
                        AppText(
                          'Entry Level',
                          style: Theme.of(context).textTheme.bodySmall,
                          color: AppColors.textSecondary,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 16.h),
          AppText(
            'Looking for Flutter and Mobile Development opportunities.',
            style: Theme.of(context).textTheme.bodyLarge,
            color: AppColors.textPrimary,
          ),
        ],
      ),
    );
  }
}
