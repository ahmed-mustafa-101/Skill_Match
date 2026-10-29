import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:skillmatch/core/design_system/colors/app_colors.dart';

class SettingsLanguageSheet extends StatelessWidget {
  const SettingsLanguageSheet({super.key, required this.selectedLanguage});

  final String selectedLanguage;

  static Future<String?> show(
    BuildContext context, {
    required String selectedLanguage,
  }) {
    return showModalBottomSheet<String>(
      context: context,
      backgroundColor: AppColors.surface,
      showDragHandle: true,
      builder: (_) =>
          SettingsLanguageSheet(selectedLanguage: selectedLanguage),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(20.w, 4.h, 20.w, 16.h),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Choose language',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: AppColors.textPrimary,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 8.h),
              for (final language in const ['English', 'العربية'])
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Text(language),
                  trailing: Icon(
                    language == selectedLanguage
                        ? Icons.radio_button_checked
                        : Icons.radio_button_unchecked,
                    color: language == selectedLanguage
                        ? AppColors.primary
                        : AppColors.textSecondary,
                  ),
                  onTap: () => Navigator.of(context).pop(language),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
