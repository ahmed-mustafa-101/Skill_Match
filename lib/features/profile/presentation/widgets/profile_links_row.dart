import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:skillmatch/core/design_system/colors/app_colors.dart';
import 'package:skillmatch/core/design_system/widgets/layout/app_card.dart';

class ProfileLinksRow extends StatelessWidget {
  const ProfileLinksRow({super.key});

  @override
  Widget build(BuildContext context) {
    return AppCard(
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
      borderRadius: 14.r,
      child: Row(
        children: [
          Expanded(
            child: OutlinedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.code_rounded),
              label: const Text('GitHub'),
              style: OutlinedButton.styleFrom(
                foregroundColor: AppColors.primary,
                side: const BorderSide(color: AppColors.border),
              ),
            ),
          ),
          SizedBox(width: 10.w),
          Expanded(
            child: OutlinedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.account_circle_outlined),
              label: const Text('LinkedIn'),
              style: OutlinedButton.styleFrom(
                foregroundColor: AppColors.primary,
                side: const BorderSide(color: AppColors.border),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
