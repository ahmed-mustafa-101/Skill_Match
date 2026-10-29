import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:skillmatch/core/design_system/colors/app_colors.dart';

class SettingsTile extends StatelessWidget {
  const SettingsTile({
    super.key,
    required this.icon,
    required this.title,
    this.value,
    this.trailing,
    this.onTap,
    this.showChevron = true,
    this.isDestructive = false,
  });

  final IconData icon;
  final String title;
  final String? value;
  final Widget? trailing;
  final VoidCallback? onTap;
  final bool showChevron;
  final bool isDestructive;

  @override
  Widget build(BuildContext context) {
    final foregroundColor =
        isDestructive ? AppColors.error : AppColors.primary;
    final titleColor =
        isDestructive ? AppColors.error : AppColors.textPrimary;

    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 12.h),
          child: Row(
            children: [
              Container(
                width: 32.r,
                height: 32.r,
                decoration: BoxDecoration(
                  color: isDestructive
                      ? AppColors.errorContainer
                      : AppColors.surfaceContainer,
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: Icon(icon, size: 18.r, color: foregroundColor),
              ),
              SizedBox(width: 12.w),
              Expanded(
                child: Text(
                  title,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: titleColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              if (trailing case final Widget trailingWidget)
                trailingWidget
              else ...[
                if (value != null) ...[
                  Text(
                    value!,
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: AppColors.textSecondary,
                    ),
                  ),
                  SizedBox(width: 6.w),
                ],
                if (showChevron)
                  Icon(
                    Icons.chevron_right_rounded,
                    size: 20.r,
                    color: isDestructive
                        ? AppColors.error
                        : AppColors.border,
                  ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
