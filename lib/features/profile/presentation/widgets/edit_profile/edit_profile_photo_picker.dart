import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:skillmatch/core/design_system/colors/app_colors.dart';
import 'package:skillmatch/core/design_system/typography/app_text_styles.dart';
import 'package:skillmatch/core/design_system/widgets/media/app_avatar.dart';
import 'package:skillmatch/core/design_system/widgets/text/app_text.dart';

class EditProfilePhotoPicker extends StatelessWidget {
  const EditProfilePhotoPicker({super.key, required this.onTap});

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            AppAvatar(
              radius: 38.r,
              backgroundColor: AppColors.surfaceContainer,
              onTap: onTap,
              child: Icon(
                Icons.person_rounded,
                size: 42.r,
                color: AppColors.primary,
              ),
            ),
            Positioned(
              right: -2.r,
              bottom: -2.r,
              child: Material(
                color: AppColors.primary,
                shape: const CircleBorder(),
                child: InkWell(
                  customBorder: const CircleBorder(),
                  onTap: onTap,
                  child: Padding(
                    padding: EdgeInsets.all(6.r),
                    child: Icon(
                      Icons.camera_alt_outlined,
                      size: 16.r,
                      color: AppColors.onPrimary,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 8.h),
        TextButton(
          onPressed: onTap,
          style: TextButton.styleFrom(
            foregroundColor: AppColors.secondary,
            padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 4.h),
            minimumSize: Size(0, 32.h),
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
          child: const AppText(
            'Change photo',
            style: AppTextStyles.labelMedium,
            color: AppColors.secondary,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
