import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:skillmatch/core/design_system/colors/app_colors.dart';

class SettingsSection extends StatelessWidget {
  const SettingsSection({
    super.key,
    required this.title,
    required this.children,
  });

  final String title;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 4.w, bottom: 8.h),
          child: Text(
            title.toUpperCase(),
            style: Theme.of(context).textTheme.labelSmall?.copyWith(
              color: AppColors.textSecondary,
              letterSpacing: 0.35,
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: AppColors.surface,
            border: Border.all(color: AppColors.border),
            borderRadius: BorderRadius.circular(16.r),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15.r),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                for (var index = 0; index < children.length; index++) ...[
                  if (index > 0)
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 14.w),
                      child: const Divider(height: 1),
                    ),
                  children[index],
                ],
              ],
            ),
          ),
        ),
      ],
    );
  }
}
