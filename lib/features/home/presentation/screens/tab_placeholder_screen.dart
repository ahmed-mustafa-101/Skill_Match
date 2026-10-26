import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:skillmatch/core/design_system/colors/app_colors.dart';
import 'package:skillmatch/core/design_system/typography/app_text_styles.dart';
import 'package:skillmatch/features/home/presentation/utils/home_text_style.dart';
import 'package:skillmatch/core/extensions/build_context_localization.dart';

class TabPlaceholderScreen extends StatelessWidget {
  const TabPlaceholderScreen({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.hourglass_empty_rounded,
              size: 40.r,
              color: AppColors.primary,
            ),
            SizedBox(height: 12.h),
            Text(title, style: homeTextStyle(AppTextStyles.sectionHeading)),
            SizedBox(height: 4.h),
            Text(
              context.l10n.tabComingSoon(title),
              style: homeTextStyle(
                AppTextStyles.bodyMedium.copyWith(
                  color: AppColors.textSecondary,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
