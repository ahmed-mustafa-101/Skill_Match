import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:skillmatch/core/design_system/colors/app_colors.dart';
import 'package:skillmatch/core/design_system/spacing/app_spacing.dart';
import 'package:skillmatch/core/design_system/typography/app_text_styles.dart';
import 'package:skillmatch/core/extensions/build_context_localization.dart';

class AuthPasswordRequirements extends StatelessWidget {
  const AuthPasswordRequirements({
    super.key,
    required this.password,
    required this.confirmPassword,
  });

  final String password;
  final String confirmPassword;

  @override
  Widget build(BuildContext context) {
        return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(context.l10n.passwordRequirements, style: AppTextStyles.labelLarge),
        SizedBox(height: AppSpacing.space8.h),
        _RequirementRow(
          isMet: password.length >= 8,
          label: context.l10n.atLeastEightCharacters,
        ),
        _RequirementRow(
          isMet: RegExp(r'\d').hasMatch(password),
          label: context.l10n.atLeastOneNumber,
        ),
        _RequirementRow(
          isMet: password.isNotEmpty && password == confirmPassword,
          label: context.l10n.passwordsMustMatch,
        ),
      ],
    );
  }
}

class _RequirementRow extends StatelessWidget {
  const _RequirementRow({required this.isMet, required this.label});

  final bool isMet;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: AppSpacing.space4.h),
      child: Row(
        children: [
          Icon(
            isMet ? Icons.check_circle : Icons.radio_button_unchecked,
            size: 14.r,
            color: isMet ? AppColors.success : AppColors.textSecondary,
          ),
          SizedBox(width: AppSpacing.space8.w),
          Text(
            label,
            style: AppTextStyles.bodySmall.copyWith(
              color: AppColors.textSecondary,
            ),
          ),
        ],
      ),
    );
  }
}
