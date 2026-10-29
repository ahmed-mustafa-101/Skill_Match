import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:skillmatch/core/design_system/colors/app_colors.dart';
import 'package:skillmatch/core/design_system/spacing/app_radius.dart';
import 'package:skillmatch/core/design_system/typography/app_text_styles.dart';
import 'package:skillmatch/core/design_system/widgets/text/app_text.dart';

class ChatBotWelcomePanel extends StatelessWidget {
  const ChatBotWelcomePanel({super.key, required this.onPromptSelected});

  final ValueChanged<String> onPromptSelected;

  static const _prompts = [
    (icon: Icons.work_outline_rounded, label: 'Find matching jobs'),
    (icon: Icons.description_outlined, label: 'Improve my CV'),
    (icon: Icons.route_outlined, label: 'Plan my career path'),
    (icon: Icons.record_voice_over_outlined, label: 'Practice an interview'),
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(20.w, 24.h, 20.w, 20.h),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 76.r,
              height: 76.r,
              decoration: BoxDecoration(
                color: AppColors.primaryFixed,
                borderRadius: BorderRadius.circular(26.r),
              ),
              child: Icon(
                Icons.auto_awesome_rounded,
                size: 38.r,
                color: AppColors.primary,
              ),
            ),
            SizedBox(height: 20.h),
            AppText(
              'Your next opportunity\\nstarts here.',
              style: AppTextStyles.headlineSmall,
              color: AppColors.primary,
              fontWeight: FontWeight.w700,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 8.h),
            AppText(
              'Ask me about your career, skills, or job search. Let’s make your next move count.',
              style: AppTextStyles.bodyMedium,
              color: AppColors.textSecondary,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 24.h),
            Align(
              alignment: Alignment.centerLeft,
              child: AppText(
                'TRY ASKING',
                style: AppTextStyles.labelSmall,
                color: AppColors.textSecondary,
                fontWeight: FontWeight.w700,
                letterSpacing: .6,
              ),
            ),
            SizedBox(height: 10.h),
            for (var index = 0; index < _prompts.length; index += 2) ...[
              Row(
                children: [
                  Expanded(
                    child: _PromptCard(
                      icon: _prompts[index].icon,
                      label: _prompts[index].label,
                      onTap: () => onPromptSelected(_prompts[index].label),
                    ),
                  ),
                  SizedBox(width: 10.w),
                  Expanded(
                    child: _PromptCard(
                      icon: _prompts[index + 1].icon,
                      label: _prompts[index + 1].label,
                      onTap: () => onPromptSelected(_prompts[index + 1].label),
                    ),
                  ),
                ],
              ),
              if (index + 2 < _prompts.length) SizedBox(height: 10.h),
            ],
          ],
        ),
      ),
    );
  }
}

class _PromptCard extends StatelessWidget {
  const _PromptCard({
    required this.icon,
    required this.label,
    required this.onTap,
  });

  final IconData icon;
  final String label;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.surface,
      borderRadius: BorderRadius.circular(AppRadius.radius12),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(AppRadius.radius12),
        child: Container(
          constraints: BoxConstraints(minHeight: 76.h),
          padding: EdgeInsets.all(12.r),
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.outlineVariant),
            borderRadius: BorderRadius.circular(AppRadius.radius12),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(icon, size: 20.r, color: AppColors.secondary),
              SizedBox(height: 8.h),
              AppText(
                label,
                style: AppTextStyles.labelSmall,
                color: AppColors.textPrimary,
                fontWeight: FontWeight.w600,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
