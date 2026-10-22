import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:skillmatch/core/design_system/app_bar/app_app_bar.dart';
import 'package:skillmatch/core/design_system/colors/app_colors.dart';
import 'package:skillmatch/core/design_system/spacing/app_spacing.dart';
import 'package:skillmatch/core/design_system/typography/app_text_styles.dart';
import 'package:skillmatch/core/design_system/widgets/buttons/app_icon_button.dart';
import 'package:skillmatch/core/design_system/widgets/media/app_assets.dart';
import 'package:skillmatch/core/design_system/widgets/media/app_image.dart';

class AuthPageLayout extends StatelessWidget {
  const AuthPageLayout({
    super.key,
    required this.title,
    required this.onBack,
    required this.child,
    this.bottom,
    this.showTopBar = true,
  });

  final String title;
  final VoidCallback onBack;
  final Widget child;
  final Widget? bottom;
  final bool showTopBar;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Scaffold(
        backgroundColor: AppColors.background,
        appBar: showTopBar
            ? AppAppBar(
                title: Text(title, style: AppTextStyles.titleLarge),
                leading: AppIconButton(
                  icon: Icons.arrow_back_rounded,
                  onPressed: onBack,
                  variant: AppIconButtonVariant.ghost,
                  size: 40.w,
                  tooltip: 'Back',
                ),
                centerTitle: true,
              )
            : null,
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  padding: EdgeInsets.fromLTRB(
                    AppSpacing.space16.w,
                    AppSpacing.space8.h,
                    AppSpacing.space16.w,
                    AppSpacing.space24.h,
                  ),
                  child: child,
                ),
              ),
              if (bottom != null)
                Padding(
                  padding: EdgeInsets.fromLTRB(
                    AppSpacing.space16.w,
                    AppSpacing.space8.h,
                    AppSpacing.space16.w,
                    AppSpacing.space16.h,
                  ),
                  child: bottom,
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class AuthBrandMark extends StatelessWidget {
  const AuthBrandMark({super.key, this.tagline});

  final String? tagline;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 56.w,
          height: 56.h,
          padding: EdgeInsets.all(AppSpacing.space4.w),
          decoration: BoxDecoration(
            color: AppColors.surface,
            borderRadius: BorderRadius.circular(16.r),
            border: Border.all(color: AppColors.border),
          ),
          child: AppImage(
            assetPath: AppAssets.appIcon,
            fit: BoxFit.contain,
            semanticLabel: 'SkillMatch app icon',
          ),
        ),
        SizedBox(height: AppSpacing.space8.h),
        AppImage(
          assetPath: AppAssets.appLogo,
          width: 108.w,
          fit: BoxFit.contain,
          semanticLabel: 'SkillMatch',
        ),
        if (tagline != null) ...[
          SizedBox(height: AppSpacing.space4.h),
          Text(
            tagline!,
            style: AppTextStyles.bodySmall.copyWith(
              color: AppColors.textSecondary,
            ),
          ),
        ],
      ],
    );
  }
}
