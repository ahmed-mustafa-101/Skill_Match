import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:skillmatch/core/design_system/colors/app_colors.dart';
import 'package:skillmatch/core/design_system/typography/app_text_styles.dart';
import 'package:skillmatch/features/home/presentation/utils/home_text_style.dart';

class HomeEmptySearchState extends StatelessWidget {
  const HomeEmptySearchState({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 32.h),
      child: Column(
        children: [
          Icon(
            Icons.search_off_rounded,
            size: 36.r,
            color: AppColors.textSecondary,
          ),
          SizedBox(height: 8.h),
          Text(
            'No jobs match your search',
            style: homeTextStyle(
              AppTextStyles.titleSmall.copyWith(color: AppColors.textSecondary),
            ),
          ),
        ],
      ),
    );
  }
}
