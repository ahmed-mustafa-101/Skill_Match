import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:skillmatch/core/design_system/colors/app_colors.dart';
import 'package:skillmatch/core/design_system/spacing/app_spacing.dart';
import 'package:skillmatch/core/design_system/typography/app_text_styles.dart';
import 'package:skillmatch/core/design_system/widgets/buttons/app_button.dart';
import 'package:skillmatch/features/onboarding/presintations/widgets/onboarding_header.dart';
import 'package:skillmatch/features/onboarding/presintations/widgets/onboarding_intro_page.dart';
import 'package:skillmatch/features/onboarding/presintations/widgets/onboarding_match_page.dart';
import 'package:skillmatch/features/onboarding/presintations/widgets/onboarding_profile_page.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key, this.onFinished});

  final VoidCallback? onFinished;

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  static const _pageCount = 3;
  int _currentPage = 0;

  void _goToPage(int page) {
    setState(() {
      _currentPage = page;
    });
  }

  void _continue() {
    if (_currentPage < _pageCount - 1) {
      _goToPage(_currentPage + 1);
      return;
    }

    widget.onFinished?.call();
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Scaffold(
        backgroundColor: AppColors.background,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: AppSpacing.space16.w),
            child: Column(
              children: [
                OnboardingHeader(onSkip: () => _goToPage(_pageCount - 1)),
                Expanded(
                  child: AnimatedSwitcher(
                    duration: const Duration(milliseconds: 220),
                    switchInCurve: Curves.easeOut,
                    switchOutCurve: Curves.easeIn,
                    child: KeyedSubtree(
                      key: ValueKey(_currentPage),
                      child: switch (_currentPage) {
                        0 => const OnboardingIntroPage(),
                        1 => const OnboardingMatchPage(),
                        _ => const OnboardingProfilePage(),
                      },
                    ),
                  ),
                ),
                SizedBox(height: AppSpacing.space20.h),
                AppButton(
                  text: _currentPage == _pageCount - 1 ? 'Start' : 'Continue',
                  onPressed: _continue,
                  textStyle: AppTextStyles.buttonLarge,
                ),
                SizedBox(
                  height: 40.h,
                  child: _currentPage == _pageCount - 1
                      ? TextButton(
                          onPressed: () => widget.onFinished?.call(),
                          style: TextButton.styleFrom(
                            foregroundColor: AppColors.secondary,
                          ),
                          child: Text(
                            'Not now',
                            style: AppTextStyles.bodyMedium.copyWith(
                              color: AppColors.secondary,
                            ),
                          ),
                        )
                      : null,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
