import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:skillmatch/core/design_system/colors/app_colors.dart';
import 'package:skillmatch/core/design_system/spacing/app_spacing.dart';
import 'package:skillmatch/core/design_system/typography/app_text_styles.dart';
import 'package:skillmatch/core/design_system/widgets/inputs/app_search_field.dart';
import 'package:skillmatch/core/design_system/widgets/text/app_text.dart';

class SavedJobsHeader extends StatelessWidget {
  const SavedJobsHeader({
    super.key,
    required this.searchController,
    required this.isSearching,
    required this.onSearchPressed,
    required this.onSearchChanged,
  });

  final TextEditingController searchController;
  final bool isSearching;
  final VoidCallback onSearchPressed;
  final ValueChanged<String> onSearchChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        AppSpacing.space16.w,
        AppSpacing.space8.h,
        AppSpacing.space16.w,
        AppSpacing.space12.h,
      ),
      child: Row(
        children: [
          if (isSearching)
            Expanded(
              child: AppSearchField(
                controller: searchController,
                hintText: 'Search jobs',
                autofocus: true,
                onChanged: onSearchChanged,
              ),
            )
          else
            Expanded(
              child: AppText(
                'Saved Jobs',
                style: AppTextStyles.headlineSmall.copyWith(
                  color: AppColors.primary,
                  fontWeight: FontWeight.w700,
                  fontSize: 22.sp,
                ),
              ),
            ),
          IconButton(
            tooltip: isSearching ? 'Close search' : 'Search jobs',
            onPressed: onSearchPressed,
            icon: Icon(
              isSearching ? Icons.close_rounded : Icons.search_rounded,
              color: AppColors.textPrimary,
              size: 23.r,
            ),
          ),
        ],
      ),
    );
  }
}
