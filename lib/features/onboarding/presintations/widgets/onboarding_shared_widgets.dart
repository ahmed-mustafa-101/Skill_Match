import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:skillmatch/core/design_system/colors/app_colors.dart';
import 'package:skillmatch/core/design_system/spacing/app_radius.dart';
import 'package:skillmatch/core/design_system/spacing/app_spacing.dart';
import 'package:skillmatch/core/design_system/typography/app_text_styles.dart';

class OnboardingIllustrationCard extends StatelessWidget {
  const OnboardingIllustrationCard({
    super.key,
    required this.child,
    this.padding,
  });

  final Widget child;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: padding ?? EdgeInsets.all(AppSpacing.space12.w),
      decoration: BoxDecoration(
        color: AppColors.surface,
        border: Border.all(color: AppColors.border),
        borderRadius: BorderRadius.circular(AppRadius.radius16.r),
      ),
      child: child,
    );
  }
}

class OnboardingMatchSummaryCard extends StatelessWidget {
  const OnboardingMatchSummaryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: AppSpacing.space12.w,
        vertical: AppSpacing.space8.h,
      ),
      decoration: BoxDecoration(
        color: AppColors.surface,
        border: Border.all(color: AppColors.border),
        borderRadius: BorderRadius.circular(AppRadius.radius12.r),
        boxShadow: const [
          BoxShadow(
            color: Color(0x0A000000),
            blurRadius: 8,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 7.w,
                height: 7.h,
                decoration: const BoxDecoration(
                  color: AppColors.secondary,
                  shape: BoxShape.circle,
                ),
              ),
              SizedBox(width: AppSpacing.space8.w),
              Expanded(
                child: Text(
                  'Flutter Developer Intern',
                  style: AppTextStyles.labelLarge.copyWith(
                    color: AppColors.textPrimary,
                  ),
                ),
              ),
              const _OnboardingStatusChip(),
            ],
          ),
          SizedBox(height: AppSpacing.space4.h),
          Row(
            children: [
              Expanded(
                child: Text(
                  'TechNova • Cairo • Hybrid',
                  style: AppTextStyles.bodySmall.copyWith(
                    color: AppColors.textSecondary,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: AppSpacing.space8.w,
                  vertical: AppSpacing.space2.h,
                ),
                decoration: BoxDecoration(
                  color: AppColors.accentContainer,
                  borderRadius: BorderRadius.circular(AppRadius.radius4.r),
                ),
                child: Text(
                  '94%',
                  style: AppTextStyles.labelSmall.copyWith(
                    color: AppColors.onAccentContainer,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _OnboardingStatusChip extends StatelessWidget {
  const _OnboardingStatusChip();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: AppSpacing.space8.w,
        vertical: AppSpacing.space2.h,
      ),
      decoration: BoxDecoration(
        color: AppColors.successContainer,
        borderRadius: BorderRadius.circular(AppRadius.radiusFull.r),
        border: Border.all(color: AppColors.success.withValues(alpha: .2)),
      ),
      child: Text(
        'Strong match',
        style: AppTextStyles.labelSmall.copyWith(color: AppColors.success),
      ),
    );
  }
}

class OnboardingProfileStep extends StatelessWidget {
  const OnboardingProfileStep({
    super.key,
    required this.icon,
    required this.label,
    required this.color,
  });

  final IconData icon;
  final String label;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 72.h,
      margin: EdgeInsets.symmetric(horizontal: AppSpacing.space4.w),
      decoration: BoxDecoration(
        color: AppColors.surface,
        border: Border.all(color: AppColors.border),
        borderRadius: BorderRadius.circular(AppRadius.radius16.r),
        boxShadow: const [
          BoxShadow(
            color: Color(0x0A000000),
            blurRadius: 6,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: color, size: 24.r),
          SizedBox(height: AppSpacing.space4.h),
          Text(
            label,
            style: AppTextStyles.labelSmall.copyWith(
              color: AppColors.textPrimary,
            ),
          ),
        ],
      ),
    );
  }
}

class OnboardingDottedConnector extends StatelessWidget {
  const OnboardingDottedConnector({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 20.w,
      child: LayoutBuilder(
        builder: (context, constraints) {
          return CustomPaint(
            size: Size(constraints.maxWidth, 1.h),
            painter: const _DottedLinePainter(),
          );
        },
      ),
    );
  }
}

class _DottedLinePainter extends CustomPainter {
  const _DottedLinePainter();

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = AppColors.border
      ..strokeWidth = 1;
    for (var x = 0.0; x < size.width; x += 4.w) {
      canvas.drawCircle(Offset(x, size.height / 2), 1.r, paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

class OnboardingProfileBenefit extends StatelessWidget {
  const OnboardingProfileBenefit({
    super.key,
    required this.color,
    required this.label,
  });

  final Color color;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 6.w,
          height: 6.h,
          decoration: BoxDecoration(color: color, shape: BoxShape.circle),
        ),
        SizedBox(width: AppSpacing.space8.w),
        Expanded(
          child: Text(
            label,
            style: AppTextStyles.bodyMedium.copyWith(
              color: AppColors.textPrimary,
            ),
          ),
        ),
      ],
    );
  }
}

class OnboardingPrimaryButton extends StatelessWidget {
  const OnboardingPrimaryButton({
    super.key,
    required this.label,
    required this.onPressed,
  });

  final String label;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 48.h,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary,
          foregroundColor: AppColors.onPrimary,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppRadius.radius12.r),
          ),
        ),
        child: Text(
          label,
          style: AppTextStyles.titleMedium.copyWith(color: AppColors.onPrimary),
        ),
      ),
    );
  }
}
