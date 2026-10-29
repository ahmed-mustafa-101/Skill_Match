import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:skillmatch/core/design_system/app_bar/app_app_bar.dart';
import 'package:skillmatch/core/design_system/colors/app_colors.dart';
import 'package:skillmatch/core/design_system/typography/app_text_styles.dart';
import 'package:skillmatch/core/design_system/widgets/media/app_avatar.dart';
import 'package:skillmatch/core/design_system/widgets/text/app_text.dart';

class ChatBotAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ChatBotAppBar({super.key, required this.onNewChat});

  final VoidCallback onNewChat;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 4);

  @override
  Widget build(BuildContext context) {
    return AppAppBar(
      title: Row(
        children: [
          AppAvatar(
            radius: 21.r,
            backgroundColor: AppColors.primaryFixed,
            child: Icon(
              Icons.smart_toy_rounded,
              color: AppColors.primary,
              size: 23.r,
            ),
          ),
          SizedBox(width: 10.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                AppText(
                  'SkillMatch AI',
                  style: AppTextStyles.titleSmall,
                  color: AppColors.primary,
                  fontWeight: FontWeight.w700,
                ),
                SizedBox(height: 1.h),
                Row(
                  children: [
                    Container(
                      width: 7.r,
                      height: 7.r,
                      decoration: const BoxDecoration(
                        color: AppColors.success,
                        shape: BoxShape.circle,
                      ),
                    ),
                    SizedBox(width: 5.w),
                    AppText(
                      'Your career copilot',
                      style: AppTextStyles.labelSmall,
                      color: AppColors.textSecondary,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      automaticallyImplyLeading: false,
      actions: [
        IconButton(
          tooltip: 'New conversation',
          onPressed: onNewChat,
          icon: Icon(Icons.edit_square, size: 21.r, color: AppColors.primary),
        ),
        SizedBox(width: 8.w),
      ],
      elevation: 0,
    );
  }
}
