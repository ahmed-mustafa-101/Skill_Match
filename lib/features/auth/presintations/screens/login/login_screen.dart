import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:skillmatch/core/design_system/colors/app_colors.dart';
import 'package:skillmatch/core/design_system/spacing/app_spacing.dart';
import 'package:skillmatch/core/design_system/typography/app_text_styles.dart';
import 'package:skillmatch/core/design_system/spacing/app_radius.dart';
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
import 'package:skillmatch/features/auth/presintations/widgets/auth_security_banner.dart';
import 'package:skillmatch/features/auth/presintations/widgets/auth_validators.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _keepSignedIn = true;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _submit() {
    if (!(_formKey.currentState?.validate() ?? false)) return;
    AppSnackBar.info(context, message: 'Login is not connected yet.');
  }

  @override
  Widget build(BuildContext context) {
    return AuthPageLayout(
      title: 'Log in',
      onBack: () => context.go(AppRoutes.onboardingScreen),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(child: AuthBrandMark()),
          SizedBox(height: AppSpacing.space20.h),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: AppSpacing.space8.w,
              vertical: AppSpacing.space4.h,
            ),
            decoration: BoxDecoration(
              color: AppColors.surfaceContainer,
              borderRadius: BorderRadius.circular(4.r),
            ),
            child: Text(
              'SKILLMATCH PORTAL',
              style: AppTextStyles.labelSmall.copyWith(
                color: AppColors.textSecondary,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          SizedBox(height: AppSpacing.space8.h),
          AppText(
            'Welcome back',
            style: AppTextStyles.sectionHeadingLarge.copyWith(
              color: AppColors.textPrimary,
            ),
          ),
          SizedBox(height: AppSpacing.space4.h),
          AppText(
            'Access your verified career pathways and opportunities.',
            style: AppTextStyles.bodyMedium.copyWith(
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
                    label: 'Email address',
                    controller: _emailController,
                    type: AppTextFieldType.email,
                    validator: AuthValidators.email,
                  ),
                  SizedBox(height: AppSpacing.space12.h),
                  AppTextField(
                    label: 'Password',
                    controller: _passwordController,
                    type: AppTextFieldType.password,
                    validator: AuthValidators.required,
                    textInputAction: TextInputAction.done,
                  ),
                  SizedBox(height: AppSpacing.space12.h),
                  Row(
                    children: [
                      SizedBox(
                        width: 32.w,
                        height: 36.h,
                        child: Checkbox(
                          value: _keepSignedIn,
                          onChanged: (value) =>
                              setState(() => _keepSignedIn = value ?? false),
                          activeColor: AppColors.primary,
                          side: const BorderSide(color: AppColors.border),
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AppText(
                              'Keep me signed in',
                              style: AppTextStyles.bodySmall.copyWith(
                                color: AppColors.textPrimary,
                              ),
                            ),
                            AppText(
                              'Only on trusted devices',
                              style: AppTextStyles.labelSmall.copyWith(
                                color: AppColors.textSecondary,
                              ),
                            ),
                          ],
                        ),
                      ),
                      AppButton(
                        text: 'Forgot password?',
                        width: 135.w,
                        variant: AppButtonVariant.text,
                        height: 45.h,
                        textStyle: AppTextStyles.labelSmall,
                        foregroundColor: AppColors.secondary,
                        borderRadius: AppRadius.radius8.r,
                        onPressed: () =>
                            context.go(AppRoutes.resetPasswordScreen),
                      ),
                    ],
                  ),
                  SizedBox(height: AppSpacing.space12.h),
                  AppButton(text: 'Log in', onPressed: _submit, height: 48.h),
                  SizedBox(height: AppSpacing.space12.h),
                  const AppDivider(label: 'or'),
                  SizedBox(height: AppSpacing.space12.h),
                  AppButton(
                    text: 'Continue with Google',
                    variant: AppButtonVariant.outlined,
                    foregroundColor: AppColors.textPrimary,
                    borderRadius: AppRadius.radius12.r,
                    height: 48.h,
                    textStyle: AppTextStyles.bodyLarge,
                    leading: AppImage(
                      assetPath: AppAssets.googleLogo,
                      width: 20.w,
                      height: 20.h,
                      semanticLabel: 'Google',
                    ),
                    onPressed: () => AppSnackBar.info(
                      context,
                      message: 'Google sign-in is not connected yet.',
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: AppSpacing.space16.h),
          const AuthSecurityBanner(),
          SizedBox(height: AppSpacing.space20.h),
          Center(
            child: Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                AppText(
                  'New here? ',
                  style: AppTextStyles.bodyMedium.copyWith(
                    color: AppColors.textPrimary,
                  ),
                ),
                GestureDetector(
                  onTap: () => context.go(AppRoutes.registerScreen),
                  child: AppText(
                    'Create account',
                    style: AppTextStyles.bodyMedium.copyWith(
                      color: AppColors.secondary,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
