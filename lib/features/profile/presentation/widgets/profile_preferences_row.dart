import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:skillmatch/core/design_system/colors/app_colors.dart';
import 'package:skillmatch/core/design_system/widgets/text/app_text.dart';

class ProfilePreferencesRow extends StatelessWidget {
  const ProfilePreferencesRow({
    super.key,
    required this.label,
    required this.value,
  });

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 12.h),
      child: Row(
        children: [
          Expanded(
            child: AppText(
              label,
              style: Theme.of(context).textTheme.bodyMedium,
              color: AppColors.textSecondary,
            ),
          ),
          Expanded(
            child: AppText(
              value,
              style: Theme.of(context).textTheme.bodyMedium,
              color: AppColors.textPrimary,
              textAlign: TextAlign.right,
            ),
          ),
        ],
      ),
    );
  }
}
