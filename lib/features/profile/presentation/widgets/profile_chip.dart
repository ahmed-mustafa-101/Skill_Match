import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:skillmatch/core/design_system/colors/app_colors.dart';

class ProfileChip extends StatelessWidget {
  const ProfileChip({
    super.key,
    required this.label,
    this.selected = false,
    this.onTap,
  });

  final String label;
  final bool selected;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(18.r),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
        decoration: BoxDecoration(
          color: selected ? AppColors.primaryFixed : AppColors.surfaceContainer,
          border: Border.all(
            color: selected ? AppColors.primary : AppColors.border,
          ),
          borderRadius: BorderRadius.circular(18.r),
        ),
        child: Text(
          label,
          style: Theme.of(context).textTheme.labelMedium?.copyWith(
            color: selected ? AppColors.primary : AppColors.textPrimary,
          ),
        ),
      ),
    );
  }
}
