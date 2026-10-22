import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:go_router/go_router.dart';
import 'package:skillmatch/core/design_system/colors/app_colors.dart';
import 'package:skillmatch/core/design_system/spacing/app_radius.dart';
import 'package:skillmatch/core/design_system/spacing/app_spacing.dart';
import 'package:skillmatch/core/design_system/typography/app_text_styles.dart';
import 'package:skillmatch/core/design_system/widgets/buttons/app_button.dart';
import 'package:skillmatch/core/design_system/widgets/layout/app_card.dart';
import 'package:skillmatch/core/design_system/widgets/feedback/app_snack_bar.dart';
import 'package:skillmatch/core/routing/app_routes.dart';
import 'package:skillmatch/features/auth/presintations/widgets/auth_page_layout.dart';

class VerifyCodeScreen extends StatefulWidget {
  const VerifyCodeScreen({
    super.key,
    this.email = '',
    this.isRegistration = false,
  });

  final String email;
  final bool isRegistration;

  @override
  State<VerifyCodeScreen> createState() => _VerifyCodeScreenState();
}

class _VerifyCodeScreenState extends State<VerifyCodeScreen> {
  static const _codeLength = 6;
  final _controllers = List.generate(
    _codeLength,
    (_) => TextEditingController(),
  );
  final _focusNodes = List.generate(_codeLength, (_) => FocusNode());
  Timer? _resendTimer;
  int _resendSeconds = 45;

  bool get _isCodeComplete =>
      _controllers.every((controller) => controller.text.isNotEmpty);

  @override
  void initState() {
    super.initState();
    _startResendTimer();
  }

  @override
  void dispose() {
    _resendTimer?.cancel();
    for (final controller in _controllers) {
      controller.dispose();
    }
    for (final focusNode in _focusNodes) {
      focusNode.dispose();
    }
    super.dispose();
  }

  void _startResendTimer() {
    _resendTimer?.cancel();
    setState(() => _resendSeconds = 45);
    _resendTimer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (!mounted) {
        timer.cancel();
        return;
      }
      if (_resendSeconds <= 1) {
        timer.cancel();
        setState(() => _resendSeconds = 0);
        return;
      }
      setState(() => _resendSeconds--);
    });
  }

  void _onCodeChanged(int index, String value) {
    setState(() {});
    if (value.isNotEmpty && index < _codeLength - 1) {
      _focusNodes[index + 1].requestFocus();
    } else if (value.isEmpty && index > 0) {
      _focusNodes[index - 1].requestFocus();
    }
  }

  void _verify() {
    if (!_isCodeComplete) return;
    if (widget.isRegistration) {
      context.go(AppRoutes.loginScreen);
      AppSnackBar.info(
        context,
        message: 'Account creation is not connected yet.',
      );
      return;
    }
    context.go(
      Uri(
        path: AppRoutes.newPasswordScreen,
        queryParameters: {'email': widget.email},
      ).toString(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final maskedEmail = _maskedEmail(widget.email);

    return AuthPageLayout(
      title: 'Verify code',
      onBack: () => context.go(AppRoutes.resetPasswordScreen),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: AppSpacing.space40.h),
          const Center(child: AuthBrandMark()),
          SizedBox(height: AppSpacing.space24.h),
          Text(
            'Enter verification code',
            style: AppTextStyles.sectionHeadingLarge.copyWith(
              color: AppColors.textPrimary,
            ),
          ),
          SizedBox(height: AppSpacing.space4.h),
          Text(
            maskedEmail.isEmpty
                ? 'We sent a 6-digit code to your email.'
                : 'We sent a 6-digit code to $maskedEmail.',
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'VERIFICATION CODE',
                  style: AppTextStyles.labelSmall.copyWith(
                    color: AppColors.textPrimary,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: AppSpacing.space12.h),
                Row(
                  children: List.generate(
                    _codeLength,
                    (index) => Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(
                          right: index == _codeLength - 1
                              ? 0
                              : AppSpacing.space8.w,
                        ),
                        child: _CodeDigitField(
                          controller: _controllers[index],
                          focusNode: _focusNodes[index],
                          onChanged: (value) => _onCodeChanged(index, value),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: AppSpacing.space12.h),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        _resendSeconds == 0
                            ? 'You can request a new code'
                            : 'Resend available in 00:${_resendSeconds.toString().padLeft(2, '0')}',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: AppTextStyles.bodySmall.copyWith(
                          color: AppColors.textSecondary,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: _resendSeconds == 0 ? _startResendTimer : null,
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                        minimumSize: Size(0, 40.h),
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      ),
                      child: Text(
                        'Resend code',
                        maxLines: 1,
                        style: AppTextStyles.bodySmall.copyWith(
                          color: _resendSeconds == 0
                              ? AppColors.primary
                              : AppColors.textDisabled,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: AppSpacing.space20.h),
          AppButton(
            text: 'Verify',
            onPressed: _verify,
            enabled: _isCodeComplete,
            height: 48.h,
          ),
          Center(
            child: AppButton(
              text: 'Change email',
              variant: AppButtonVariant.text,
              height: 40.h,
              textStyle: AppTextStyles.bodyMedium,
              foregroundColor: AppColors.secondary,
              borderRadius: AppRadius.radius8.r,
              onPressed: () => context.go(AppRoutes.resetPasswordScreen),
            ),
          ),
          SizedBox(height: AppSpacing.space8.h),
          Center(
            child: Text(
              'Didn’t receive it? Check Spam.',
              style: AppTextStyles.bodySmall.copyWith(
                color: AppColors.textSecondary,
              ),
            ),
          ),
        ],
      ),
    );
  }

  String _maskedEmail(String email) {
    final parts = email.split('@');
    if (parts.length != 2 || parts.first.isEmpty) return '';
    final visiblePrefix = parts.first.length == 1
        ? parts.first
        : parts.first.substring(0, 2);
    return '$visiblePrefix•••@${parts.last}';
  }
}

class _CodeDigitField extends StatelessWidget {
  const _CodeDigitField({
    required this.controller,
    required this.focusNode,
    required this.onChanged,
  });

  final TextEditingController controller;
  final FocusNode focusNode;
  final ValueChanged<String> onChanged;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 52.h,
      child: TextField(
        controller: controller,
        focusNode: focusNode,
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        maxLength: 1,
        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
        onChanged: onChanged,
        style: AppTextStyles.titleLarge.copyWith(color: AppColors.textPrimary),
        decoration: InputDecoration(
          counterText: '',
          filled: true,
          fillColor: AppColors.surface,
          contentPadding: EdgeInsets.zero,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppRadius.radius12.r),
            borderSide: const BorderSide(color: AppColors.border),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppRadius.radius12.r),
            borderSide: const BorderSide(color: AppColors.border),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppRadius.radius12.r),
            borderSide: const BorderSide(color: AppColors.primary, width: 2),
          ),
        ),
      ),
    );
  }
}
