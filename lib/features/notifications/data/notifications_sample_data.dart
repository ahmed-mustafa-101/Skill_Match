import 'package:flutter/material.dart';
import 'package:skillmatch/core/design_system/colors/app_colors.dart';
import 'package:skillmatch/features/notifications/domain/entities/notification_item.dart';
import 'package:skillmatch/generated/l10n.dart';

abstract final class NotificationsSampleData {
  static List<NotificationItem> items(S l10n) => [
    NotificationItem(
      id: 'new-jobs',
      title: l10n.notificationNewJobsTitle,
      message: l10n.notificationNewJobsMessage,
      time: l10n.notificationTenMinutesAgo,
      actionLabel: l10n.notificationViewJobs,
      category: NotificationCategory.jobs,
      icon: Icons.work_outline_rounded,
      iconColor: AppColors.primary,
      iconBackground: Color(0xFFE9EAEC),
      group: l10n.notificationToday,
    ),
    NotificationItem(
      id: 'roadmap-updated',
      title: l10n.notificationRoadmapTitle,
      message: l10n.notificationRoadmapMessage,
      time: l10n.notificationTwoHoursAgo,
      actionLabel: l10n.notificationViewRoadmap,
      category: NotificationCategory.roadmap,
      icon: Icons.route_outlined,
      iconColor: Color(0xFFA57812),
      iconBackground: Color(0xFFF7F0DD),
      group: l10n.notificationToday,
    ),
    NotificationItem(
      id: 'cv-analysis',
      title: l10n.notificationCvTitle,
      message: l10n.notificationCvMessage,
      time: l10n.notificationFourHoursAgo,
      actionLabel: l10n.notificationReviewCv,
      category: NotificationCategory.cv,
      icon: Icons.description_outlined,
      iconColor: AppColors.success,
      iconBackground: Color(0xFFEAF1EC),
      group: l10n.notificationToday,
      isRead: true,
    ),
    NotificationItem(
      id: 'application-status',
      title: l10n.notificationApplicationTitle,
      message: l10n.notificationApplicationMessage,
      time: l10n.notificationYesterdayAt,
      actionLabel: l10n.notificationViewApplication,
      category: NotificationCategory.applications,
      icon: Icons.assignment_turned_in_outlined,
      iconColor: AppColors.primary,
      iconBackground: Color(0xFFE9EAEC),
      group: l10n.notificationYesterday,
      isRead: true,
    ),
  ];
}
