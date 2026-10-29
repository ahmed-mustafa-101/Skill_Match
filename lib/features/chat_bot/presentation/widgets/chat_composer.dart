import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:skillmatch/core/design_system/colors/app_colors.dart';
import 'package:skillmatch/core/design_system/spacing/app_radius.dart';
import 'package:skillmatch/core/design_system/typography/app_text_styles.dart';
import 'package:skillmatch/core/design_system/widgets/buttons/app_icon_button.dart';
import 'package:skillmatch/core/design_system/widgets/inputs/app_text_field.dart';
import 'package:skillmatch/core/design_system/widgets/text/app_text.dart';

class ChatComposer extends StatelessWidget {
  const ChatComposer({
    super.key,
    required this.controller,
    required this.onSend,
    required this.onChanged,
    required this.enabled,
  });

  final TextEditingController controller;
  final VoidCallback onSend;
  final ValueChanged<String> onChanged;
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(16.w, 10.h, 16.w, 8.h),
      decoration: const BoxDecoration(
        color: AppColors.background,
        border: Border(top: BorderSide(color: AppColors.outlineVariant)),
      ),
      child: SafeArea(
        top: false,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  child: AppTextField(
                    controller: controller,
                    hintText: 'Ask anything about your career...',
                    onChanged: onChanged,
                    onSubmitted: (_) => onSend(),
                    textInputAction: TextInputAction.send,
                    maxLines: 4,
                    minLines: 1,
                    fillColor: AppColors.surface,
                    borderRadius: AppRadius.radius16,
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 14.w,
                      vertical: 12.h,
                    ),
                  ),
                ),
                SizedBox(width: 8.w),
                AppIconButton(
                  icon: Icons.arrow_upward_rounded,
                  onPressed: enabled ? onSend : null,
                  size: 48.r,
                  iconSize: 22.r,
                  tooltip: 'Send message',
                ),
              ],
            ),
            SizedBox(height: 7.h),
            AppText(
              'AI can make mistakes. Double-check important information.',
              style: AppTextStyles.labelSmall,
              color: AppColors.textSecondary,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
