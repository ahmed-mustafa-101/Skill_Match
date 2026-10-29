import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:skillmatch/core/design_system/colors/app_colors.dart';
import 'package:skillmatch/core/design_system/spacing/app_radius.dart';
import 'package:skillmatch/core/design_system/typography/app_text_styles.dart';
import 'package:skillmatch/core/design_system/widgets/inputs/app_text_field.dart';
import 'package:skillmatch/core/design_system/widgets/text/app_text.dart';

class EditProfilePhoneField extends StatelessWidget {
  const EditProfilePhoneField({
    super.key,
    required this.controller,
    required this.countryCode,
    required this.onCountryCodeChanged,
    required this.validator,
  });

  final TextEditingController controller;
  final String countryCode;
  final ValueChanged<String> onCountryCodeChanged;
  final String? Function(String?) validator;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const AppText(
          'Phone Number',
          style: AppTextStyles.labelMedium,
          color: AppColors.textSecondary,
          fontWeight: FontWeight.w600,
        ),
        SizedBox(height: 8.h),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 56.h,
              padding: EdgeInsets.symmetric(horizontal: 8.w),
              decoration: BoxDecoration(
                color: AppColors.surfaceLowest,
                border: Border.all(color: AppColors.outlineVariant),
                borderRadius: BorderRadius.circular(AppRadius.radius8),
              ),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  value: countryCode,
                  isDense: true,
                  items: const [
                    DropdownMenuItem(value: '+20', child: Text('EG  +20')),
                    DropdownMenuItem(value: '+966', child: Text('SA  +966')),
                    DropdownMenuItem(value: '+971', child: Text('AE  +971')),
                  ],
                  onChanged: (value) {
                    if (value != null) {
                      onCountryCodeChanged(value);
                    }
                  },
                ),
              ),
            ),
            SizedBox(width: 12.w),
            Expanded(
              child: AppTextField(
                controller: controller,
                type: AppTextFieldType.phone,
                validator: validator,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
