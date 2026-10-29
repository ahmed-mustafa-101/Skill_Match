import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:skillmatch/core/design_system/colors/app_colors.dart';
import 'package:skillmatch/core/design_system/spacing/app_spacing.dart';
import 'package:skillmatch/core/design_system/widgets/layout/app_card.dart';
import 'package:skillmatch/core/design_system/widgets/text/app_text.dart';
import 'package:skillmatch/features/notifications/domain/entities/notification_item.dart';

class NotificationCard extends StatelessWidget {
  const NotificationCard({
    super.key,
    required this.item,
    required this.onTap,
  });

  final NotificationItem item;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return AppCard(
      onTap: onTap,
      padding: EdgeInsets.all(14.r),
      borderRadius: 14.r,
      boxShadow: const [],
      backgroundColor: item.isRead ? AppColors.surface : AppColors.background,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 40.r,
            height: 40.r,
            decoration: BoxDecoration(
              color: item.iconBackground,
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: Icon(item.icon, color: item.iconColor, size: 21.r),
          ),
          SizedBox(width: 12.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: AppText(
                        item.title,
                        style: Theme.of(context).textTheme.titleSmall,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    if (!item.isRead) ...[
                      SizedBox(width: 5.w),
                      Container(
                        width: 8.r,
                        height: 8.r,
                        decoration: const BoxDecoration(
                          color: AppColors.secondary,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ],
                  ],
                ),
                SizedBox(height: 4.h),
                AppText(
                  item.message,
                  style: Theme.of(context).textTheme.bodySmall,
                  color: AppColors.textSecondary,
                ),
                SizedBox(height: 9.h),
                const Divider(height: 1),
                SizedBox(height: AppSpacing.space8.h),
                Row(
                  children: [
                    Expanded(
                      child: AppText(
                        item.time,
                        style: Theme.of(context).textTheme.bodySmall,
                        color: AppColors.textSecondary,
                      ),
                    ),
                    AppText(
                      '${item.actionLabel} →',
                      style: Theme.of(context).textTheme.bodySmall,
                      color: item.category == NotificationCategory.cv
                          ? AppColors.secondary
                          : AppColors.primary,
                      fontWeight: FontWeight.w600,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
