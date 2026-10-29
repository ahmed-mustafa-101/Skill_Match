import 'package:flutter/material.dart';
import 'package:skillmatch/core/design_system/colors/app_colors.dart';
import 'package:skillmatch/features/notifications/domain/entities/notification_item.dart';

abstract final class NotificationsSampleData {
  static const items = [
    NotificationItem(
      title: 'New jobs match your profile',
      message: 'We found 8 Flutter opportunities based on your skills.',
      time: '10 min ago',
      actionLabel: 'View Jobs',
      category: NotificationCategory.jobs,
      icon: Icons.work_outline_rounded,
      iconColor: AppColors.primary,
      iconBackground: Color(0xFFE9EAEC),
      group: 'TODAY',
    ),
    NotificationItem(
      title: 'Your roadmap has been updated',
      message: 'Testing is now one of your highest-priority skills.',
      time: '2 hrs ago',
      actionLabel: 'View Roadmap',
      category: NotificationCategory.roadmap,
      icon: Icons.route_outlined,
      iconColor: Color(0xFFA57812),
      iconBackground: Color(0xFFF7F0DD),
      group: 'TODAY',
    ),
    NotificationItem(
      title: 'CV analysis completed',
      message: 'We extracted 12 skills and updated your career profile.',
      time: '4 hrs ago',
      actionLabel: 'Review CV',
      category: NotificationCategory.cv,
      icon: Icons.description_outlined,
      iconColor: AppColors.success,
      iconBackground: Color(0xFFEAF1EC),
      group: 'TODAY',
      isRead: true,
    ),
    NotificationItem(
      title: 'Application status updated',
      message: 'Your TechNova application is now In Review.',
      time: 'Yesterday • 3:45 PM',
      actionLabel: 'View Application',
      category: NotificationCategory.applications,
      icon: Icons.assignment_turned_in_outlined,
      iconColor: AppColors.primary,
      iconBackground: Color(0xFFE9EAEC),
      group: 'YESTERDAY',
      isRead: true,
    ),
  ];
}
