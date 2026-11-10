import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:go_router/go_router.dart';
import 'package:skillmatch/core/design_system/app_bar/app_app_bar.dart';
import 'package:skillmatch/core/design_system/colors/app_colors.dart';
import 'package:skillmatch/core/design_system/widgets/feedback/app_dialog.dart';
import 'package:skillmatch/core/extensions/build_context_localization.dart';
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
  String _languageCode = 'en';
  bool _hasInitializedLanguage = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (!_hasInitializedLanguage) {
      final languageCode = Localizations.localeOf(context).languageCode;
      _languageCode = languageCode == 'ar' ? 'ar' : 'en';
      _hasInitializedLanguage = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar(
        title: Text(
          context.l10n.settings,
          style: Theme.of(context).textTheme.titleLarge
              ?.copyWith(color: AppColors.primary, fontWeight: FontWeight.w600),
        ),
        centerTitle: false,
        leading: IconButton(
          tooltip: context.l10n.settingsBack,
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.pop(),
        ),
        actions: [
          IconButton(
            tooltip: context.l10n.settingsOptions,
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
            final horizontalPadding = constraints.maxWidth > 600 ? 32.w : 20.w;
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
                      title: context.l10n.settingsAccount,
                      children: [
                        SettingsTile(
                          icon: Icons.lock_outline_rounded,
                          title: context.l10n.settingsChangePassword,
                          onTap: () {},
                        ),
                      ],
                    ),
                    SizedBox(height: 20.h),
                    SettingsSection(
                      title: context.l10n.settingsPreferences,
                      children: [
                        SettingsTile(
                          icon: Icons.notifications_none_rounded,
                          title: context.l10n.notifications,
                          showChevron: false,
                          trailing: Switch.adaptive(
                            value: _notificationsEnabled,
                            onChanged: (value) =>
                                setState(() => _notificationsEnabled = value),
                          ),
                        ),
                        SettingsTile(
                          icon: Icons.palette_outlined,
                          title: context.l10n.settingsTheme,
                          showChevron: false,
                          trailing: Switch.adaptive(
                            value: _darkModeEnabled,
                            onChanged: (value) =>
                                setState(() => _darkModeEnabled = value),
                          ),
                        ),
                        SettingsTile(
                          icon: Icons.language_rounded,
                          title: context.l10n.settingsLanguage,
                          value: _languageLabel(context),
                          onTap: _selectLanguage,
                        ),
                      ],
                    ),
                    SizedBox(height: 20.h),
                    SettingsSection(
                      title: context.l10n.settingsPrivacySupport,
                      children: [
                        SettingsTile(
                          icon: Icons.verified_user_outlined,
                          title: context.l10n.settingsPrivacyPolicy,
                          onTap: () {},
                        ),
                        SettingsTile(
                          icon: Icons.chat_bubble_outline_rounded,
                          title: context.l10n.settingsContactUs,
                          onTap: () {},
                        ),
                        SettingsTile(
                          icon: Icons.share_outlined,
                          title: context.l10n.settingsFollowUs,
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
                          title: context.l10n.settingsLogout,
                          isDestructive: true,
                          onTap: _confirmLogout,
                        ),
                      ],
                    ),
                    SizedBox(height: 28.h),
                    Text(
                      context.l10n.settingsCopyright,
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
    );
  }

  Future<void> _confirmLogout() async {
    final shouldLogOut = await AppDialog.confirm(
      context,
      title: context.l10n.settingsLogout,
      message: context.l10n.settingsLogoutConfirm,
      confirmText: context.l10n.settingsLogout,
      cancelText: context.l10n.settingsCancel,
    );
    if (shouldLogOut == true && mounted) {
      context.go(AppRoutes.loginScreen);
    }
  }

  Future<void> _selectLanguage() async {
    final language = await SettingsLanguageSheet.show(
      context,
      selectedLanguage: _languageCode,
    );
    if (language != null && mounted) {
      setState(() => _languageCode = language);
    }
  }

  void _showOptions(BuildContext context) {
    showModalBottomSheet<void>(
      context: context,
      builder: (context) => SafeArea(
        child: ListTile(
          leading: const Icon(Icons.tune_rounded),
          title: Text(context.l10n.settings),
          subtitle: Text(context.l10n.settingsManagePreferences),
          onTap: () => Navigator.of(context).pop(),
        ),
      ),
    );
  }

  String _languageLabel(BuildContext context) => _languageCode == 'ar'
      ? context.l10n.settingsLanguageArabic
      : context.l10n.settingsLanguageEnglish;
}
