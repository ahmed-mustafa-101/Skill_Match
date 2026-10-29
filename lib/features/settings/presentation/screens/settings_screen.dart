import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:go_router/go_router.dart';
import 'package:skillmatch/core/design_system/app_bar/app_app_bar.dart';
import 'package:skillmatch/core/design_system/colors/app_colors.dart';
import 'package:skillmatch/core/design_system/widgets/feedback/app_dialog.dart';
import 'package:skillmatch/core/routing/app_routes.dart';
import 'package:skillmatch/features/settings/presentation/widgets/settings_language_sheet.dart';
import 'package:skillmatch/features/settings/presentation/widgets/settings_section.dart';
import 'package:skillmatch/features/settings/presentation/widgets/settings_tile.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool _notificationsEnabled = true;
  bool _darkModeEnabled = false;
  String _language = 'English';

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Scaffold(
        appBar: AppAppBar(
          title: Text(
            'Settings',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
              color: AppColors.primary,
              fontWeight: FontWeight.w600,
            ),
          ),
          centerTitle: false,
          leading: IconButton(
            tooltip: 'Back',
            icon: const Icon(Icons.arrow_back),
            onPressed: () => context.pop(),
          ),
          actions: [
            IconButton(
              tooltip: 'Settings options',
              onPressed: () => _showOptions(context),
              icon: const Icon(Icons.tune_rounded),
            ),
            SizedBox(width: 8.w),
          ],
        ),
        body: SafeArea(
          top: false,
          child: LayoutBuilder(
            builder: (context, constraints) {
              final horizontalPadding = constraints.maxWidth > 600
                  ? 32.w
                  : 20.w;
              return Align(
                alignment: Alignment.topCenter,
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 600),
                  child: ListView(
                    padding: EdgeInsets.fromLTRB(
                      horizontalPadding,
                      12.h,
                      horizontalPadding,
                      20.h,
                    ),
                    children: [
                      SettingsSection(
                        title: 'Account',
                        children: [
                          SettingsTile(
                            icon: Icons.lock_outline_rounded,
                            title: 'Change Password',
                            onTap: () {},
                          ),
                        ],
                      ),
                      SizedBox(height: 20.h),
                      SettingsSection(
                        title: 'Preferences',
                        children: [
                          SettingsTile(
                            icon: Icons.notifications_none_rounded,
                            title: 'Notifications',
                            showChevron: false,
                            trailing: Switch.adaptive(
                              value: _notificationsEnabled,
                              onChanged: (value) =>
                                  setState(() => _notificationsEnabled = value),
                            ),
                          ),
                          SettingsTile(
                            icon: Icons.palette_outlined,
                            title: 'Theme',
                            showChevron: false,
                            trailing: Switch.adaptive(
                              value: _darkModeEnabled,
                              onChanged: (value) =>
                                  setState(() => _darkModeEnabled = value),
                            ),
                          ),
                          SettingsTile(
                            icon: Icons.language_rounded,
                            title: 'Language',
                            value: _language,
                            onTap: _selectLanguage,
                          ),
                        ],
                      ),
                      SizedBox(height: 20.h),
                      SettingsSection(
                        title: 'Privacy & Support',
                        children: [
                          SettingsTile(
                            icon: Icons.verified_user_outlined,
                            title: 'Privacy Policy',
                            onTap: () {},
                          ),
                          SettingsTile(
                            icon: Icons.chat_bubble_outline_rounded,
                            title: 'Contact Us',
                            onTap: () {},
                          ),
                          SettingsTile(
                            icon: Icons.share_outlined,
                            title: 'Follow Us',
                            onTap: () {},
                          ),
                        ],
                      ),
                      SizedBox(height: 5.h),
                      SettingsSection(
                        title: '',
                        children: [
                          SettingsTile(
                            icon: Icons.logout_rounded,
                            title: 'Log Out',
                            isDestructive: true,
                            onTap: _confirmLogout,
                          ),
                        ],
                      ),
                      SizedBox(height: 28.h),
                      Text(
                        '© 2025 SkillMatch. All rights reserved.',
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.bodySmall
                            ?.copyWith(color: AppColors.textSecondary),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  Future<void> _confirmLogout() async {
    final shouldLogOut = await AppDialog.confirm(
      context,
      title: 'Log Out',
      message: 'Are you sure you want to log out?',
      confirmText: 'Log Out',
      cancelText: 'Cancel',
      textDirection: TextDirection.ltr,
    );
    if (shouldLogOut == true && mounted) {
      context.go(AppRoutes.loginScreen);
    }
  }

  Future<void> _selectLanguage() async {
    final language = await SettingsLanguageSheet.show(
      context,
      selectedLanguage: _language,
    );
    if (language != null && mounted) {
      setState(() => _language = language);
    }
  }

  void _showOptions(BuildContext context) {
    showModalBottomSheet<void>(
      context: context,
      builder: (context) => SafeArea(
        child: ListTile(
          leading: const Icon(Icons.tune_rounded),
          title: const Text('Settings'),
          subtitle: const Text('Manage your account preferences.'),
          onTap: () => Navigator.of(context).pop(),
        ),
      ),
    );
  }
}
