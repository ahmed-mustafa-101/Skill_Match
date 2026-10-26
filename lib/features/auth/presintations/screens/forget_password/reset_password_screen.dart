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
import 'package:skillmatch/core/design_system/widgets/text/app_text.dart';
import 'package:skillmatch/core/routing/app_routes.dart';
import 'package:skillmatch/features/auth/presintations/widgets/auth_page_layout.dart';
import 'package:skillmatch/features/auth/presintations/widgets/auth_validators.dart';
import 'package:skillmatch/core/extensions/build_context_localization.dart';

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
      title: context.l10n.resetPasswordTitle,
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
          AppText(
            context.l10n.secureVerification,
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
            child: AppText(
              context.l10n.accountRecovery,
              style: AppTextStyles.labelSmall.copyWith(
                color: AppColors.textSecondary,
              ),
            ),
          ),
          SizedBox(height: AppSpacing.space12.h),
          AppText(
            context.l10n.forgotYourPassword,
            style: AppTextStyles.cardTitle.copyWith(
              color: AppColors.textPrimary,
            ),
          ),
          SizedBox(height: AppSpacing.space8.h),
          AppText(
            context.l10n.resetPasswordDescription,
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
                    label: context.l10n.emailAddress,
                    controller: _emailController,
                    type: AppTextFieldType.email,
                    hintText: context.l10n.emailExample,
                    validator: AuthValidators.email(context.l10n),
                  ),
                  SizedBox(height: AppSpacing.space16.h),
                  AppButton(
                    text: context.l10n.sendCode,
                    onPressed: _sendCode,
                    height: 48.h,
                    textStyle: AppTextStyles.buttonSmall,
                  ),
                  SizedBox(height: AppSpacing.space8.h),
                  AppText(
                    context.l10n.checkSpam,
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
              text: context.l10n.backToLogin,
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
