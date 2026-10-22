import 'package:flutter/material.dart';
import 'package:skillmatch/core/design_system/colors/app_colors.dart';
import 'package:skillmatch/core/design_system/spacing/app_spacing.dart';
import 'package:skillmatch/core/design_system/typography/app_text_styles.dart';

class AppDivider extends StatelessWidget {
  const AppDivider({
    super.key,
    this.height = 1,
    this.thickness = 1,
    this.indent = 0,
    this.endIndent = 0,
    this.color,
    this.label,
    this.labelPadding = AppSpacing.space12,
  });

  final double height;
  final double thickness;
  final double indent;
  final double endIndent;
  final Color? color;
  final String? label;
  final double labelPadding;

  @override
  Widget build(BuildContext context) {
    if (label != null) {
      return Row(
        children: [
          Expanded(
            child: Divider(
              height: height,
              thickness: thickness,
              color: color ?? AppColors.divider,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: labelPadding),
            child: Text(
              label!,
              style: AppTextStyles.bodySmall.copyWith(
                color: AppColors.textSecondary,
              ),
            ),
          ),
          Expanded(
            child: Divider(
              height: height,
              thickness: thickness,
              color: color ?? AppColors.divider,
            ),
          ),
        ],
      );
    }

    return Divider(
      height: height,
      thickness: thickness,
      indent: indent,
      endIndent: endIndent,
      color: color ?? AppColors.divider,
    );
  }
}
