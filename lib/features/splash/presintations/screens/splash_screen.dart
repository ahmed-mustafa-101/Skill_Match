import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:go_router/go_router.dart';
import 'package:skillmatch/core/design_system/colors/app_colors.dart';
import 'package:skillmatch/core/routing/app_routes.dart';
import 'package:skillmatch/core/design_system/spacing/app_radius.dart';
import 'package:skillmatch/core/design_system/spacing/app_spacing.dart';
import 'package:skillmatch/core/design_system/typography/app_text_styles.dart';
import 'package:skillmatch/core/design_system/widgets/feedback/app_loader.dart';
import 'package:skillmatch/core/design_system/widgets/media/app_assets.dart';
import 'package:skillmatch/core/design_system/widgets/text/app_text.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Timer? _navigationTimer;

  @override
  void initState() {
    super.initState();
    _navigationTimer = Timer(const Duration(seconds: 5), () {
      if (mounted) {
        context.go(AppRoutes.onboardingScreen);
      }
    });
  }

  @override
  void dispose() {
    _navigationTimer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.light,
        systemNavigationBarColor: AppColors.background,
        systemNavigationBarDividerColor: AppColors.background,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
      child: Scaffold(
        backgroundColor: AppColors.background,
        body: SafeArea(
          child: LayoutBuilder(
            builder: (context, constraints) {
              final availableLogoWidth = constraints.maxWidth - 48.w;
              final logoWidth = 140.w < availableLogoWidth
                  ? 140.w
                  : availableLogoWidth;

              return Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: 70.w,
                      height: 70.h,
                      decoration: BoxDecoration(
                        color: AppColors.surface,
                        borderRadius: BorderRadius.circular(
                          AppRadius.radius16.r,
                        ),
                        boxShadow: const [
                          BoxShadow(
                            color: Color(0x12000000),
                            blurRadius: 18,
                            offset: Offset(0, 6),
                          ),
                        ],
                      ),
                      child: Image.asset(
                        AppAssets.appIcon,
                        fit: BoxFit.contain,
                        semanticLabel: 'SkillMatch app icon',
                      ),
                    ),
                    SizedBox(height: AppSpacing.space12.h),
                    Image.asset(
                      AppAssets.appLogo,
                      width: logoWidth,
                      fit: BoxFit.contain,
                      semanticLabel: 'SkillMatch',
                    ),
                    SizedBox(height: AppSpacing.space8.h),
                    AppText(
                      'Professional Compatibility and Skills Platform',
                      textAlign: TextAlign.center,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: AppTextStyles.bodySmall.copyWith(
                        fontSize: 12.sp,
                        height: 1.4,
                        color: AppColors.textSecondary,
                      ),
                    ),
                    SizedBox(height: AppSpacing.space32.h),
                    const AppLoader(),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
