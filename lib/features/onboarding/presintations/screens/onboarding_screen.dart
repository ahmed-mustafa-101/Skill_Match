import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:skillmatch/core/design_system/colors/app_colors.dart';
import 'package:skillmatch/core/design_system/spacing/app_spacing.dart';
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
  final _pageController = PageController();
  int _currentPage = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _goToPage(int page) {
    _pageController.animateToPage(
      page,
      duration: const Duration(milliseconds: 280),
      curve: Curves.easeOutCubic,
    );
  }

  void _continue() {
    if (_currentPage < _pageCount - 1) {
      _goToPage(_currentPage + 1);
      return;
    }

    widget.onFinished?.call();
  }

  void _handlePageChanged(int page) {
    setState(() {
      _currentPage = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: AppSpacing.space16.w),
          child: Column(
            children: [
              OnboardingHeader(onSkip: () => _goToPage(_pageCount - 1)),
              Expanded(
                child: PageView(
                  controller: _pageController,
                  onPageChanged: _handlePageChanged,
                  children: [
                    OnboardingIntroPage(onContinue: _continue),
                    OnboardingMatchPage(onContinue: _continue),
                    OnboardingProfilePage(
                      onStart: _continue,
                      onNotNow: () => widget.onFinished?.call(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
