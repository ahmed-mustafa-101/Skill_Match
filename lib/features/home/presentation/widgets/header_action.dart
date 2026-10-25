import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:skillmatch/core/design_system/colors/app_colors.dart';

class HeaderAction extends StatelessWidget {
  const HeaderAction({
    super.key,
    required this.icon,
    required this.label,
    required this.onPressed,
    this.showBadge = false,
  });

  final IconData icon;
  final String label;
  final VoidCallback onPressed;
  final bool showBadge;

  @override
  Widget build(BuildContext context) {
    return Semantics(
      button: true,
      label: label,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Material(
            color: AppColors.surface,
            shape: const CircleBorder(
              side: BorderSide(color: AppColors.border),
            ),
            child: InkWell(
              customBorder: const CircleBorder(),
              onTap: onPressed,
              child: SizedBox(
                width: 38.w,
                height: 38.h,
                child: Icon(icon, size: 20.r, color: AppColors.textPrimary),
              ),
            ),
          ),
          if (showBadge)
            Positioned(
              top: 9.h,
              right: 9.w,
              child: Container(
                width: 7.w,
                height: 7.h,
                decoration: const BoxDecoration(
                  color: AppColors.secondary,
                  shape: BoxShape.circle,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
