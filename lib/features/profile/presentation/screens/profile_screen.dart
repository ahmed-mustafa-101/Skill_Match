import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:go_router/go_router.dart';
import 'package:skillmatch/core/design_system/app_bar/app_app_bar.dart';
import 'package:skillmatch/core/design_system/colors/app_colors.dart';
import 'package:skillmatch/core/design_system/widgets/text/app_text.dart';
import 'package:skillmatch/core/routing/app_routes.dart';
import 'package:skillmatch/features/profile/presentation/widgets/profile_action_button.dart';
import 'package:skillmatch/features/profile/presentation/widgets/profile_header_card.dart';
import 'package:skillmatch/features/profile/presentation/widgets/profile_links_row.dart';
import 'package:skillmatch/features/profile/presentation/widgets/profile_sections.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Scaffold(
        appBar: AppAppBar(
          title: AppText(
            'Candidate Profile',
            style: Theme.of(context).textTheme.titleLarge,
            fontWeight: FontWeight.w700,
            color: AppColors.primary,
          ),
          actions: [
            IconButton(
              tooltip: 'Profile settings',
              onPressed: () => context.push(AppRoutes.settingsScreen),
              icon: const Icon(Icons.settings_outlined),
            ),
            SizedBox(width: 8.w),
          ],
        ),
        body: SafeArea(
          top: false,
          child: LayoutBuilder(
            builder: (context, constraints) {
              final horizontalPadding = constraints.maxWidth > 600
                  ? 24.w
                  : 16.w;
              return Align(
                alignment: Alignment.topCenter,
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 640),
                  child: ListView(
                    padding: EdgeInsets.fromLTRB(
                      horizontalPadding,
                      10.h,
                      horizontalPadding,
                      24.h,
                    ),
                    children: [
                      const ProfileHeaderCard(),
                      SizedBox(height: 16.h),
                      const ProfileActionButton(),
                      SizedBox(height: 16.h),
                      const ProfileLinksRow(),
                      SizedBox(height: 16.h),
                      const ProfileEducationSection(),
                      SizedBox(height: 16.h),
                      const ProfileExperienceSection(),
                      SizedBox(height: 16.h),
                      const ProfileSkillsSection(),
                      SizedBox(height: 16.h),
                      const ProfileProjectsSection(),
                      SizedBox(height: 16.h),
                      const ProfileCvSection(),
                      SizedBox(height: 16.h),
                      const ProfileCareerPreferencesSection(),
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
}
