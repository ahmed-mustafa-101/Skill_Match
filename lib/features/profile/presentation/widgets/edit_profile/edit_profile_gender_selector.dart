import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:skillmatch/core/design_system/colors/app_colors.dart';
import 'package:skillmatch/core/design_system/spacing/app_radius.dart';
import 'package:skillmatch/core/design_system/typography/app_text_styles.dart';
import 'package:skillmatch/core/design_system/widgets/text/app_text.dart';
import 'package:skillmatch/core/extensions/build_context_localization.dart';

class EditProfileGenderSelector extends StatelessWidget {
  const EditProfileGenderSelector({
    super.key,
    required this.value,
    required this.onChanged,
  });

  final String value;
  final ValueChanged<String> onChanged;

  @override
  Widget build(BuildContext context) {
    final genders = [
      (value: 'male', label: context.l10n.editProfileMale),
      (value: 'female', label: context.l10n.editProfileFemale),
      (value: 'unspecified', label: context.l10n.editProfilePreferNotToSay),
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppText(
          context.l10n.editProfileGender,
          style: AppTextStyles.labelMedium,
          color: AppColors.textSecondary,
          fontWeight: FontWeight.w600,
        ),
        SizedBox(height: 8.h),
        Row(
          children: [
            for (var index = 0; index < genders.length; index++) ...[
              if (index > 0) SizedBox(width: 8.w),
              Expanded(
                child: _GenderOption(
                  label: genders[index].label,
                  selected: value == genders[index].value,
                  onTap: () => onChanged(genders[index].value),
                ),
              ),
            ],
          ],
        ),
      ],
    );
  }
}

class _GenderOption extends StatelessWidget {
  const _GenderOption({
    required this.label,
    required this.selected,
    required this.onTap,
  });

  final String label;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: selected ? AppColors.primaryFixed : AppColors.background,
      borderRadius: BorderRadius.circular(AppRadius.radius8),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(AppRadius.radius8),
        child: Container(
          constraints: BoxConstraints(minHeight: 40.h),
          padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 8.h),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            border: Border.all(
              color: selected ? AppColors.primaryFixedDim : AppColors.border,
            ),
            borderRadius: BorderRadius.circular(AppRadius.radius8),
          ),
          child: AppText(
            label,
            style: AppTextStyles.labelSmall,
            color: selected ? AppColors.primary : AppColors.textSecondary,
            fontWeight: selected ? FontWeight.w600 : FontWeight.w500,
            textAlign: TextAlign.center,
            maxLines: 2,
          ),
        ),
      ),
    );
  }
}
