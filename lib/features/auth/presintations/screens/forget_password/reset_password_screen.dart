import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:skillmatch/core/design_system/colors/app_colors.dart';
import 'package:skillmatch/core/design_system/spacing/app_radius.dart';
import 'package:skillmatch/core/design_system/spacing/app_spacing.dart';
import 'package:skillmatch/core/design_system/typography/app_text_styles.dart';
import 'package:skillmatch/core/design_system/widgets/buttons/app_button.dart';
import 'package:skillmatch/core/design_system/widgets/layout/app_card.dart';
import 'package:skillmatch/core/design_system/widgets/inputs/app_text_field.dart';
import 'package:skillmatch/core/routing/app_routes.dart';
import 'package:skillmatch/features/auth/presintations/widgets/auth_page_layout.dart';
import 'package:skillmatch/features/auth/presintations/widgets/auth_validators.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key, this.email = ''});

  final String email;

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  final _formKey = GlobalKey<FormState>();
  late final TextEditingController _emailController;

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController(text: widget.email);
  }

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  void _sendCode() {
    if (!(_formKey.currentState?.validate() ?? false)) return;

    final email = Uri.encodeQueryComponent(_emailController.text.trim());
    context.go('${AppRoutes.verifyCodeScreen}?email=$email&flow=reset');
  }

  @override
  Widget build(BuildContext context) {
    return AuthPageLayout(
      title: 'Reset password',
      onBack: () => context.go(AppRoutes.loginScreen),
      bottom: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.verified_user_outlined,
            size: 16,
            color: AppColors.textSecondary,
          ),
          SizedBox(width: AppSpacing.space8.w),
          Text(
            'SkillMatch Secure Verification',
            style: AppTextStyles.labelSmall.copyWith(
              color: AppColors.textSecondary,
            ),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: AppSpacing.space8.w,
              vertical: AppSpacing.space4.h,
            ),
            decoration: BoxDecoration(
              color: AppColors.surfaceContainer,
              borderRadius: BorderRadius.circular(4.r),
              border: Border.all(color: AppColors.border),
            ),
            child: Text(
              'ACCOUNT RECOVERY',
              style: AppTextStyles.labelSmall.copyWith(
                color: AppColors.textSecondary,
              ),
            ),
          ),
          SizedBox(height: AppSpacing.space12.h),
          Text(
            'Forgot your password?',
            style: AppTextStyles.cardTitle.copyWith(
              color: AppColors.textPrimary,
            ),
          ),
          SizedBox(height: AppSpacing.space8.h),
          Text(
            'Enter your email and we’ll send you a verification code.',
            style: AppTextStyles.bodyLarge.copyWith(
              color: AppColors.textSecondary,
            ),
          ),
          SizedBox(height: AppSpacing.space20.h),
          AppCard(
            padding: EdgeInsets.all(AppSpacing.space16.w),
            borderRadius: AppRadius.radius12.r,
            border: Border.all(color: AppColors.border),
            boxShadow: const [],
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  AppTextField(
                    label: 'Email address',
                    controller: _emailController,
                    type: AppTextFieldType.email,
                    hintText: 'name@example.com',
                    validator: AuthValidators.email,
                  ),
                  SizedBox(height: AppSpacing.space16.h),
                  AppButton(
                    text: 'Send code',
                    onPressed: _sendCode,
                    height: 48.h,
                  ),
                  SizedBox(height: AppSpacing.space8.h),
                  Text(
                    'If you don’t see the email, check Spam.',
                    textAlign: TextAlign.center,
                    style: AppTextStyles.bodySmall.copyWith(
                      color: AppColors.textSecondary,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: AppSpacing.space16.h),
          Center(
            child: AppButton(
              text: 'Back to login',
              variant: AppButtonVariant.text,
              height: 40.h,
              textStyle: AppTextStyles.bodyMedium,
              foregroundColor: AppColors.secondary,
              borderRadius: AppRadius.radius8.r,
              onPressed: () => context.go(AppRoutes.loginScreen),
            ),
          ),
        ],
      ),
    );
  }
}
