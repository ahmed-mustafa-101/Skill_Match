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
import 'package:skillmatch/core/extensions/build_context_localization.dart';

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

  @override
  Widget build(BuildContext context) {
        return AuthPageLayout(
      title: context.l10n.loginTitle,
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
              context.l10n.skillMatchPortal,
              style: AppTextStyles.labelSmall.copyWith(
                color: AppColors.textSecondary,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          SizedBox(height: AppSpacing.space8.h),
          AppText(
            context.l10n.welcomeBack,
            style: AppTextStyles.sectionHeadingLarge.copyWith(
              color: AppColors.textPrimary,
            ),
          ),
          SizedBox(height: AppSpacing.space4.h),
          AppText(
            context.l10n.loginDescription,
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
                    label: context.l10n.emailAddress,
                    controller: _emailController,
                    type: AppTextFieldType.email,
                    validator: AuthValidators.email(context.l10n),
                  ),
                  SizedBox(height: AppSpacing.space12.h),
                  AppTextField(
                    label: context.l10n.password,
                    controller: _passwordController,
                    type: AppTextFieldType.password,
                    validator: AuthValidators.required(context.l10n),
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
                              context.l10n.keepMeSignedIn,
                              style: AppTextStyles.bodySmall.copyWith(
                                color: AppColors.textPrimary,
                              ),
                            ),
                            AppText(
                              context.l10n.trustedDevicesOnly,
                              style: AppTextStyles.labelSmall.copyWith(
                                color: AppColors.textSecondary,
                              ),
                            ),
                          ],
                        ),
                      ),
                      AppButton(
                        text: context.l10n.forgotPassword,
                        width: 150.w,
                        variant: AppButtonVariant.text,
                        height: 48.h,
                        textStyle: AppTextStyles.labelSmall,
                        foregroundColor: AppColors.secondary,
                        borderRadius: AppRadius.radius8.r,
                        onPressed: () =>
                            context.go(AppRoutes.resetPasswordScreen),
                      ),
                    ],
                  ),
                  SizedBox(height: AppSpacing.space12.h),
                  AppButton(
                    text: context.l10n.loginTitle,
                    textStyle: AppTextStyles.buttonSmall,
                    onPressed: () => context.go(AppRoutes.homeScreen),
                    height: 50.h,
                  ),
                  SizedBox(height: AppSpacing.space12.h),
                  AppDivider(label: context.l10n.or),
                  SizedBox(height: AppSpacing.space12.h),
                  AppButton(
                    text: context.l10n.continueWithGoogle,
                    variant: AppButtonVariant.outlined,
                    foregroundColor: AppColors.textPrimary,
                    borderRadius: AppRadius.radius12.r,
                    height: 48.h,
                    textStyle: AppTextStyles.buttonSmall,
                    leading: AppImage(
                      assetPath: AppAssets.googleLogo,
                      width: 20.w,
                      height: 20.h,
                      semanticLabel: context.l10n.google,
                    ),
                    onPressed: () => AppSnackBar.info(
                      context,
                      message: context.l10n.googleSignInUnavailable,
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
                  context.l10n.newHere,
                  style: AppTextStyles.bodyMedium.copyWith(
                    color: AppColors.textPrimary,
                  ),
                ),
                GestureDetector(
                  onTap: () => context.go(AppRoutes.registerScreen),
                  child: AppText(
                    context.l10n.createAccount,
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
