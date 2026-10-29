import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:skillmatch/core/design_system/colors/app_colors.dart';
import 'package:skillmatch/core/design_system/spacing/app_radius.dart';
import 'package:skillmatch/core/design_system/typography/app_text_styles.dart';
import 'package:skillmatch/core/design_system/widgets/media/app_avatar.dart';
import 'package:skillmatch/core/design_system/widgets/text/app_text.dart';
import 'package:skillmatch/features/chat_bot/domain/entities/chat_message.dart';

class ChatMessageBubble extends StatelessWidget {
  const ChatMessageBubble({super.key, required this.message});

  final ChatMessage message;

  bool get _isUser => message.sender == ChatMessageSender.user;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 16.h),
      child: Row(
        mainAxisAlignment: _isUser
            ? MainAxisAlignment.end
            : MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          if (!_isUser) ...[
            AppAvatar(
              radius: 15.r,
              backgroundColor: AppColors.primaryFixed,
              child: Icon(
                Icons.smart_toy_rounded,
                size: 16.r,
                color: AppColors.primary,
              ),
            ),
            SizedBox(width: 8.w),
          ],
          Flexible(
            child: Container(
              constraints: BoxConstraints(maxWidth: 290.w),
              padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 11.h),
              decoration: BoxDecoration(
                color: _isUser ? AppColors.primary : AppColors.surface,
                border: _isUser
                    ? null
                    : Border.all(color: AppColors.outlineVariant),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(AppRadius.radius16.r),
                  topRight: Radius.circular(AppRadius.radius16.r),
                  bottomLeft: Radius.circular(
                    _isUser ? AppRadius.radius16.r : 4.r,
                  ),
                  bottomRight: Radius.circular(
                    _isUser ? 4.r : AppRadius.radius16.r,
                  ),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppText(
                    message.text,
                    style: AppTextStyles.bodyMedium,
                    color: _isUser
                        ? AppColors.onPrimary
                        : AppColors.textPrimary,
                  ),
                  SizedBox(height: 4.h),
                  Align(
                    alignment: Alignment.centerRight,
                    child: AppText(
                      _formatTime(message.sentAt),
                      style: AppTextStyles.labelSmall,
                      color: _isUser
                          ? AppColors.onPrimary.withValues(alpha: .72)
                          : AppColors.textSecondary,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  String _formatTime(DateTime time) {
    final hour = time.hour % 12 == 0 ? 12 : time.hour % 12;
    final minute = time.minute.toString().padLeft(2, '0');
    final period = time.hour < 12 ? 'AM' : 'PM';
    return '$hour:$minute $period';
  }
}
