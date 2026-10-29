import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:skillmatch/core/design_system/colors/app_colors.dart';
import 'package:skillmatch/core/design_system/spacing/app_radius.dart';
import 'package:skillmatch/core/design_system/typography/app_text_styles.dart';
import 'package:skillmatch/core/design_system/widgets/inputs/app_text_field.dart';
import 'package:skillmatch/core/design_system/widgets/text/app_text.dart';

class EditProfileOptionalLinkField extends StatelessWidget {
  const EditProfileOptionalLinkField({
    super.key,
    required this.label,
    required this.icon,
    required this.controller,
  });

  final String label;
  final IconData icon;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(icon, size: 16.r, color: AppColors.primary),
            SizedBox(width: 6.w),
            Expanded(
              child: AppText(
                label,
                style: AppTextStyles.labelMedium,
                color: AppColors.textSecondary,
                fontWeight: FontWeight.w600,
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 2.h),
              decoration: BoxDecoration(
                color: AppColors.surfaceHigh,
                borderRadius: BorderRadius.circular(AppRadius.radiusFull),
              ),
              child: const AppText(
                'Optional',
                style: AppTextStyles.labelSmall,
                color: AppColors.textSecondary,
              ),
            ),
          ],
        ),
        SizedBox(height: 6.h),
        AppTextField(
          controller: controller,
          prefixIcon: Padding(
            padding: const EdgeInsets.only(left: 12, right: 6),
            child: Align(
              alignment: Alignment.center,
              child: Text('https://', style: AppTextStyles.labelMedium),
            ),
          ),
        ),
      ],
    );
  }
}
