import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:skillmatch/core/design_system/colors/app_colors.dart';
import 'package:skillmatch/core/design_system/spacing/app_radius.dart';
import 'package:skillmatch/core/design_system/spacing/app_spacing.dart';
import 'package:skillmatch/core/design_system/typography/app_text_styles.dart';
import 'package:skillmatch/core/design_system/widgets/buttons/app_button.dart';
import 'package:skillmatch/core/design_system/widgets/layout/app_card.dart';
import 'package:skillmatch/core/design_system/widgets/layout/app_divider.dart';
import 'package:skillmatch/core/design_system/widgets/feedback/app_snack_bar.dart';
import 'package:skillmatch/core/design_system/widgets/inputs/app_text_field.dart';
import 'package:skillmatch/core/design_system/widgets/media/app_assets.dart';
import 'package:skillmatch/core/design_system/widgets/media/app_image.dart';
import 'package:skillmatch/core/design_system/widgets/text/app_text.dart';
import 'package:skillmatch/core/routing/app_routes.dart';
import 'package:skillmatch/features/auth/presintations/widgets/auth_page_layout.dart';
import 'package:skillmatch/features/auth/presintations/widgets/auth_validators.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  bool _agreedToTerms = false;

  @override
  void dispose() {
    _emailController.dispose();
    _phoneController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  void _submit() {
    if (!(_formKey.currentState?.validate() ?? false) || !_agreedToTerms) {
      return;
    }

    final email = Uri.encodeQueryComponent(_emailController.text.trim());
    context.go('${AppRoutes.verifyCodeScreen}?email=$email&flow=register');
  }

  @override
  Widget build(BuildContext context) {
    return AuthPageLayout(
      title: 'Create account',
      onBack: () => context.go(AppRoutes.loginScreen),
      child: Column(
        children: [
          const AuthBrandMark(tagline: 'Smart Career Discovery'),
          SizedBox(height: AppSpacing.space16.h),
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
                    label: 'Email',
                    controller: _emailController,
                    type: AppTextFieldType.email,
                    validator: AuthValidators.email,
                  ),
                  SizedBox(height: AppSpacing.space12.h),
                  AppTextField(
                    label: 'Phone number',
                    controller: _phoneController,
                    type: AppTextFieldType.phone,
                    validator: AuthValidators.required,
                  ),
                  SizedBox(height: AppSpacing.space12.h),
                  AppTextField(
                    label: 'Password',
                    controller: _passwordController,
                    type: AppTextFieldType.password,
                    validator: AuthValidators.password(),
                    onChanged: (_) => setState(() {}),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: AppSpacing.space4.h,
                        bottom: AppSpacing.space8.h,
                      ),
                      child: AppText(
                        'Use 8+ characters',
                        style: AppTextStyles.bodySmall.copyWith(
                          color: AppColors.textSecondary,
                        ),
                      ),
                    ),
                  ),
                  AppTextField(
                    label: 'Confirm password',
                    controller: _confirmPasswordController,
                    type: AppTextFieldType.password,
                    validator: AuthValidators.confirmPassword(
                      _passwordController,
                    ),
                  ),
                  SizedBox(height: AppSpacing.space12.h),
                  Row(
                    children: [
                      SizedBox(
                        width: 32.w,
                        height: 36.h,
                        child: Checkbox(
                          value: _agreedToTerms,
                          onChanged: (value) =>
                              setState(() => _agreedToTerms = value ?? false),
                          activeColor: AppColors.primary,
                          side: const BorderSide(color: AppColors.border),
                        ),
                      ),
                      SizedBox(width: AppSpacing.space8.w),
                      Expanded(
                        child: Text(
                          'I agree to the Terms & Privacy Policy',
                          style: AppTextStyles.bodySmall.copyWith(
                            color: AppColors.textPrimary,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: AppSpacing.space12.h),
                  AppButton(
                    text: 'Complete sign up',
                    onPressed: _submit,
                    enabled: _agreedToTerms,
                    height: 48.h,
                    textStyle: AppTextStyles.buttonSmall,
                  ),
                  SizedBox(height: AppSpacing.space16.h),
                  const AppDivider(label: 'or'),
                  SizedBox(height: AppSpacing.space16.h),
                  AppButton(
                    text: 'Sign up with Google',
                    variant: AppButtonVariant.outlined,
                    foregroundColor: AppColors.textPrimary,
                    borderRadius: AppRadius.radius12.r,
                    height: 48.h,
                    textStyle: AppTextStyles.buttonSmall,
                    leading: AppImage(
                      assetPath: AppAssets.googleLogo,
                      width: 20.w,
                      height: 20.h,
                      semanticLabel: 'Google',
                    ),
                    onPressed: () => AppSnackBar.info(
                      context,
                      message: 'Google sign-up is not connected yet.',
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: AppSpacing.space16.h),
          Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              AppText(
                'Already have an account? ',
                style: AppTextStyles.bodyMedium.copyWith(
                  color: AppColors.secondary,
                ),
              ),
              GestureDetector(
                onTap: () => context.go(AppRoutes.loginScreen),
                child: Text(
                  'Log in',
                  style: AppTextStyles.bodyMedium.copyWith(
                    color: AppColors.secondary,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: AppSpacing.space8.h),
          AppText(
            'Next, you can upload your CV (optional).',
            style: AppTextStyles.bodySmall.copyWith(
              color: AppColors.textSecondary,
            ),
          ),
        ],
      ),
    );
  }
}
