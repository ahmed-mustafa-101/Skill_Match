import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:skillmatch/core/design_system/colors/app_colors.dart';
import 'package:skillmatch/core/design_system/typography/app_text_styles.dart';
import 'package:skillmatch/features/home/presentation/utils/home_text_style.dart';
import 'package:skillmatch/core/extensions/build_context_localization.dart';

class HomeSearchBar extends StatelessWidget {
  const HomeSearchBar({
    super.key,
    required this.controller,
    required this.onChanged,
    required this.onFilter,
  });

  final TextEditingController controller;
  final ValueChanged<String> onChanged;
  final VoidCallback onFilter;

  @override
  Widget build(BuildContext context) {
        return Container(
      height: 48.h,
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(color: AppColors.border),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: .025),
            blurRadius: 6.r,
            offset: Offset(0, 2.h),
          ),
        ],
      ),
      child: Row(
        children: [
          SizedBox(width: 14.w),
          Icon(
            Icons.search_rounded,
            size: 20.r,
            color: AppColors.textSecondary,
          ),
          SizedBox(width: 8.w),
          Expanded(
            child: TextField(
              controller: controller,
              onChanged: onChanged,
              textInputAction: TextInputAction.search,
              style: homeTextStyle(AppTextStyles.bodySmall),
              decoration: InputDecoration(
                hintText: context.l10n.searchHint,
                border: InputBorder.none,
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                filled: false,
                isDense: true,
                contentPadding: EdgeInsets.zero,
              ),
            ),
          ),
          IconButton(
            onPressed: onFilter,
            tooltip: context.l10n.filterJobs,
            icon: Icon(
              Icons.filter_list_rounded,
              size: 20.r,
              color: AppColors.textSecondary,
            ),
          ),
          SizedBox(width: 4.w),
        ],
      ),
    );
  }
}
