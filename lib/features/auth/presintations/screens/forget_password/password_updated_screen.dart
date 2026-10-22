import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:go_router/go_router.dart';
import 'package:skillmatch/core/design_system/colors/app_colors.dart';
import 'package:skillmatch/core/design_system/spacing/app_spacing.dart';
import 'package:skillmatch/core/design_system/typography/app_text_styles.dart';
import 'package:skillmatch/core/design_system/widgets/buttons/app_button.dart';
import 'package:skillmatch/core/routing/app_routes.dart';
import 'package:skillmatch/features/auth/presintations/widgets/auth_page_layout.dart';

class PasswordUpdatedScreen extends StatelessWidget {
  const PasswordUpdatedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AuthPageLayout(
      title: '',
      onBack: () => context.go(AppRoutes.loginScreen),
      showTopBar: false,
      bottom: Column(
        children: [
          AppButton(
            text: 'Back to login',
            onPressed: () => context.go(AppRoutes.loginScreen),
            height: 48.h,
          ),
          SizedBox(height: 120.h),
          Text(
            'S K I L L M A T C H',
            style: AppTextStyles.labelLarge.copyWith(
              color: AppColors.textHint,
              letterSpacing: 2,
            ),
          ),
        ],
      ),
      child: Column(
        children: [
          SizedBox(height: 120.h),
          Container(
            width: 88.r,
            height: 88.r,
            decoration: BoxDecoration(
              color: AppColors.successContainer,
              shape: BoxShape.circle,
              border: Border.all(
                color: AppColors.success.withValues(alpha: .15),
              ),
            ),
            child: Icon(
              Icons.check_rounded,
              size: 42.r,
              color: AppColors.success,
            ),
          ),
          SizedBox(height: AppSpacing.space24.h),
          Text(
            'Password updated',
            textAlign: TextAlign.center,
            style: AppTextStyles.sectionHeadingLarge.copyWith(
              color: AppColors.textPrimary,
            ),
          ),
          SizedBox(height: AppSpacing.space8.h),
          Text(
            'Your password has been changed successfully. You can now log in with your new password.',
            textAlign: TextAlign.center,
            style: AppTextStyles.bodyLarge.copyWith(
              color: AppColors.textSecondary,
            ),
          ),
        ],
      ),
    );
  }
}
