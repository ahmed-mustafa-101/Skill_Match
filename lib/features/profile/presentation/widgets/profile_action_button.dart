import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:go_router/go_router.dart';
import 'package:skillmatch/core/design_system/colors/app_colors.dart';
import 'package:skillmatch/core/routing/app_routes.dart';

class ProfileActionButton extends StatelessWidget {
  const ProfileActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: OutlinedButton(
        onPressed: () => context.push(AppRoutes.editProfileScreen),
        style: OutlinedButton.styleFrom(
          minimumSize: Size.fromHeight(46.h),
          side: const BorderSide(color: AppColors.primary),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14.r),
          ),
        ),
        child: const Text('Edit Profile'),
      ),
    );
  }
}
