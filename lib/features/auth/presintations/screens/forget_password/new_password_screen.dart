import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:go_router/go_router.dart';
import 'package:skillmatch/core/design_system/colors/app_colors.dart';
import 'package:skillmatch/core/design_system/spacing/app_radius.dart';
import 'package:skillmatch/core/design_system/spacing/app_spacing.dart';
import 'package:skillmatch/core/design_system/typography/app_text_styles.dart';
import 'package:skillmatch/core/design_system/widgets/buttons/app_button.dart';
import 'package:skillmatch/core/design_system/widgets/layout/app_card.dart';
import 'package:skillmatch/core/design_system/widgets/layout/app_divider.dart';
import 'package:skillmatch/core/design_system/widgets/inputs/app_text_field.dart';
import 'package:skillmatch/core/design_system/widgets/text/app_text.dart';
import 'package:skillmatch/core/routing/app_routes.dart';
import 'package:skillmatch/features/auth/presintations/widgets/auth_page_layout.dart';
import 'package:skillmatch/features/auth/presintations/widgets/auth_password_requirements.dart';
import 'package:skillmatch/features/auth/presintations/widgets/auth_validators.dart';

class NewPasswordScreen extends StatefulWidget {
  const NewPasswordScreen({super.key, this.email = ''});

  final String email;

  @override
  State<NewPasswordScreen> createState() => _NewPasswordScreenState();
}

class _NewPasswordScreenState extends State<NewPasswordScreen> {
  final _formKey = GlobalKey<FormState>();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  void _updatePassword() {
    if (!(_formKey.currentState?.validate() ?? false)) return;
    context.go(AppRoutes.passwordUpdatedScreen);
  }

  @override
  Widget build(BuildContext context) {
    final verifyRoute = Uri(
      path: AppRoutes.verifyCodeScreen,
      queryParameters: {'email': widget.email, 'flow': 'reset'},
    ).toString();
    return AuthPageLayout(
      title: 'New password',
      onBack: () => context.go(verifyRoute),
      bottom: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          AppButton(
            text: 'Update password',
            onPressed: _updatePassword,
            height: 48.h,
            textStyle: AppTextStyles.buttonSmall,
          ),
          SizedBox(height: AppSpacing.space8.h),
          AppButton(
            text: 'Back to login',
            variant: AppButtonVariant.text,
            height: 50.h,
            textStyle: AppTextStyles.buttonSmall,
            foregroundColor: AppColors.secondary,
            borderRadius: AppRadius.radius8.r,
            onPressed: () => context.go(AppRoutes.loginScreen),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: AppSpacing.space12.h),
          AppText(
            'Create a new password',
            style: AppTextStyles.sectionHeadingLarge.copyWith(
              color: AppColors.textPrimary,
            ),
          ),
          SizedBox(height: AppSpacing.space4.h),
          AppText(
            'Choose a strong password you haven’t used before.',
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppTextField(
                    label: 'New password',
                    controller: _passwordController,
                    type: AppTextFieldType.password,
                    validator: AuthValidators.password(),
                    onChanged: (_) => setState(() {}),
                  ),
                  SizedBox(height: AppSpacing.space4.h),
                  AppText(
                    'Use at least 8 characters.',
                    style: AppTextStyles.bodySmall.copyWith(
                      color: AppColors.textSecondary,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: AppSpacing.space12.h,
                    ),
                    child: const AppDivider(),
                  ),
                  AppTextField(
                    label: 'Confirm new password',
                    controller: _confirmPasswordController,
                    type: AppTextFieldType.password,
                    validator: AuthValidators.confirmPassword(
                      _passwordController,
                    ),
                    onChanged: (_) => setState(() {}),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: AppSpacing.space12.h,
                    ),
                    child: const AppDivider(),
                  ),
                  AuthPasswordRequirements(
                    password: _passwordController.text,
                    confirmPassword: _confirmPasswordController.text,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
