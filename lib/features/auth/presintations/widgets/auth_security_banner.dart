import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:skillmatch/core/design_system/colors/app_colors.dart';
import 'package:skillmatch/core/design_system/spacing/app_radius.dart';
import 'package:skillmatch/core/design_system/spacing/app_spacing.dart';
import 'package:skillmatch/core/design_system/typography/app_text_styles.dart';
import 'package:skillmatch/core/design_system/widgets/layout/app_card.dart';
import 'package:skillmatch/core/extensions/build_context_localization.dart';

class AuthSecurityBanner extends StatelessWidget {
  const AuthSecurityBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return AppCard(
      width: double.infinity,
      padding: EdgeInsets.all(AppSpacing.space12.w),
      backgroundColor: AppColors.surfaceContainer,
      borderRadius: AppRadius.radius12.r,
      border: Border.all(color: AppColors.border),
      boxShadow: const [],
      child: Row(
        children: [
          Icon(
            Icons.verified_user_outlined,
            color: AppColors.primary,
            size: 20.r,
          ),
          SizedBox(width: AppSpacing.space12.w),
          Expanded(
            child: Text(
              context.l10n.securityBanner,
              style: AppTextStyles.bodySmall.copyWith(
                color: AppColors.textSecondary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
