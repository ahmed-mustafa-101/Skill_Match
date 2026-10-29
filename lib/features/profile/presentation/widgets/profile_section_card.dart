import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:skillmatch/core/design_system/colors/app_colors.dart';
import 'package:skillmatch/core/design_system/widgets/layout/app_card.dart';
import 'package:skillmatch/core/design_system/widgets/text/app_text.dart';

class ProfileSectionCard extends StatelessWidget {
  const ProfileSectionCard({
    super.key,
    required this.title,
    this.status,
    this.trailing,
    required this.children,
  });

  final String title;
  final String? status;
  final Widget? trailing;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return AppCard(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
      borderRadius: 16.r,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: AppText(
                  title,
                  style: Theme.of(context).textTheme.titleLarge,
                  fontWeight: FontWeight.w700,
                  color: AppColors.textPrimary,
                ),
              ),
              if (status != null)
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
                  decoration: BoxDecoration(
                    color: AppColors.surfaceContainer,
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  child: AppText(
                    status!,
                    style: Theme.of(context).textTheme.labelSmall,
                    color: AppColors.textSecondary,
                  ),
                ),
              if (trailing != null) ...[
                SizedBox(width: 8.w),
                trailing!,
              ],
            ],
          ),
          if (children.isNotEmpty) SizedBox(height: 12.h),
          ...children,
        ],
      ),
    );
  }
}
