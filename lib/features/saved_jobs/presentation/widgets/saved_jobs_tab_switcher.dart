import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:skillmatch/core/design_system/colors/app_colors.dart';

class SavedJobsTabSwitcher extends StatelessWidget {
  const SavedJobsTabSwitcher({
    super.key,
    required this.selectedIndex,
    required this.onChanged,
  });

  final int selectedIndex;
  final ValueChanged<int> onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46.h,
      padding: EdgeInsets.all(4.r),
      decoration: BoxDecoration(
        color: AppColors.surfaceHigh,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Row(
        children: [
          _TabButton(
            label: 'Saved',
            isSelected: selectedIndex == 0,
            onPressed: () => onChanged(0),
          ),
          _TabButton(
            label: 'Applied',
            isSelected: selectedIndex == 1,
            onPressed: () => onChanged(1),
          ),
        ],
      ),
    );
  }
}

class _TabButton extends StatelessWidget {
  const _TabButton({
    required this.label,
    required this.isSelected,
    required this.onPressed,
  });

  final String label;
  final bool isSelected;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 160),
        decoration: BoxDecoration(
          color: isSelected ? AppColors.primary : Colors.transparent,
          borderRadius: BorderRadius.circular(9.r),
        ),
        child: TextButton(
          onPressed: onPressed,
          style: TextButton.styleFrom(
            foregroundColor: isSelected
                ? AppColors.onPrimary
                : AppColors.textSecondary,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(9.r),
            ),
            textStyle: TextStyle(
              fontSize: 13.sp,
              fontWeight: isSelected ? FontWeight.w600 : FontWeight.w500,
            ),
          ),
          child: Text(label),
        ),
      ),
    );
  }
}
