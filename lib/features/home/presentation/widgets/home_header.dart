import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:skillmatch/core/design_system/colors/app_colors.dart';
import 'package:skillmatch/core/design_system/typography/app_text_styles.dart';
import 'package:skillmatch/core/design_system/widgets/media/app_assets.dart';
import 'package:skillmatch/core/design_system/widgets/media/app_image.dart';
import 'package:skillmatch/features/home/presentation/utils/home_text_style.dart';
import 'package:skillmatch/features/home/presentation/widgets/header_action.dart';
import 'package:skillmatch/core/extensions/build_context_localization.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppBar(
          titleSpacing: 1.w,
          backgroundColor: AppColors.background,
          title: Row(
            children: [
              AppImage(
                assetPath: AppAssets.appLogo,
                width: 124.w,
                height: 65.h,
                semanticLabel: context.l10n.appName,
              ),
              const Spacer(),
              HeaderAction(
                icon: Icons.notifications_none_rounded,
                label: context.l10n.notifications,
                showBadge: true,
                onPressed: () {},
              ),
              SizedBox(width: 8.w),
              HeaderAction(
                icon: Icons.settings_outlined,
                label: context.l10n.settings,
                onPressed: () {},
              ),
            ],
          ),
        ),
        SizedBox(height: 18.h),
        Text(
          context.l10n.homeGreeting('Ahmed'),
          style: AppTextStyles.sectionHeadingLarge.copyWith(
            fontSize: 23.sp,
            height: 1.2.h,
          ),
        ),
        SizedBox(height: 4.h),
        Text(
          context.l10n.homePrompt,
          style: homeTextStyle(
            AppTextStyles.bodyMedium.copyWith(color: AppColors.textSecondary),
          ),
        ),
      ],
    );
  }
}
