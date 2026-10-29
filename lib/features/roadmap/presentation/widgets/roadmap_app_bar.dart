import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:skillmatch/core/design_system/app_bar/app_app_bar.dart';
import 'package:skillmatch/core/design_system/colors/app_colors.dart';
import 'package:skillmatch/core/design_system/typography/app_text_styles.dart';
import 'package:skillmatch/core/design_system/widgets/text/app_text.dart';

class RoadmapAppBar extends StatelessWidget implements PreferredSizeWidget {
  const RoadmapAppBar({super.key, required this.onResetTasks});

  final VoidCallback onResetTasks;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppAppBar(
      title: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.alt_route_rounded, size: 23.r, color: AppColors.primary),
          SizedBox(width: 8.w),
          AppText(
            'Roadmap',
            style: AppTextStyles.titleLarge,
            color: AppColors.primary,
            fontWeight: FontWeight.w700,
          ),
        ],
      ),
      automaticallyImplyLeading: false,
      actions: [
        IconButton(
          tooltip: 'Reset weekly tasks',
          onPressed: onResetTasks,
          icon: Icon(
            Icons.refresh_rounded,
            color: AppColors.textPrimary,
            size: 23.r,
          ),
        ),
        SizedBox(width: 8.w),
      ],
    );
  }
}
