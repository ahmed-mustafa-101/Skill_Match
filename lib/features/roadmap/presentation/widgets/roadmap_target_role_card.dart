import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:skillmatch/core/design_system/colors/app_colors.dart';
import 'package:skillmatch/core/design_system/spacing/app_radius.dart';
import 'package:skillmatch/core/design_system/typography/app_text_styles.dart';
import 'package:skillmatch/core/design_system/widgets/layout/app_card.dart';
import 'package:skillmatch/core/design_system/widgets/text/app_text.dart';

class RoadmapTargetRoleCard extends StatelessWidget {
  const RoadmapTargetRoleCard({
    super.key,
    required this.role,
    required this.roles,
    required this.onRoleChanged,
  });

  final String role;
  final List<String> roles;
  final ValueChanged<String> onRoleChanged;

  @override
  Widget build(BuildContext context) {
    return AppCard(
      padding: EdgeInsets.all(14.r),
      borderRadius: AppRadius.radius12,
      boxShadow: const [],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: AppText(
                  'TARGET ROLE',
                  style: AppTextStyles.labelSmall,
                  color: AppColors.textSecondary,
                  fontWeight: FontWeight.w600,
                  letterSpacing: .5,
                ),
              ),
              TextButton(
                onPressed: () => _selectRole(context),
                style: TextButton.styleFrom(
                  foregroundColor: AppColors.secondary,
                  padding: EdgeInsets.symmetric(horizontal: 4.w),
                  minimumSize: Size(0, 28.h),
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
                child: AppText(
                  'Change',
                  style: AppTextStyles.labelMedium,
                  color: AppColors.secondary,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          SizedBox(height: 2.h),
          Row(
            children: [
              Container(
                width: 32.r,
                height: 32.r,
                decoration: BoxDecoration(
                  color: AppColors.surfaceContainer,
                  borderRadius: BorderRadius.circular(AppRadius.radius8),
                ),
                child: Icon(
                  Icons.radio_button_checked_rounded,
                  size: 20.r,
                  color: AppColors.primary,
                ),
              ),
              SizedBox(width: 9.w),
              Expanded(
                child: AppText(
                  role,
                  style: AppTextStyles.titleSmall,
                  color: AppColors.primary,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          SizedBox(height: 6.h),
          AppText(
            'Your roadmap is based on your current skills and job requirements.',
            style: AppTextStyles.bodySmall,
            color: AppColors.textSecondary,
          ),
        ],
      ),
    );
  }

  Future<void> _selectRole(BuildContext context) async {
    final selectedRole = await showDialog<String>(
      context: context,
      builder: (context) => SimpleDialog(
        title: const Text('Choose your target role'),
        children: roles
            .map(
              (option) => ListTile(
                leading: Icon(
                  role == option
                      ? Icons.radio_button_checked_rounded
                      : Icons.radio_button_unchecked_rounded,
                  color: AppColors.primary,
                ),
                title: Text(option),
                onTap: () => Navigator.of(context).pop(option),
              ),
            )
            .toList(),
      ),
    );
    if (selectedRole != null) {
      onRoleChanged(selectedRole);
    }
  }
}
