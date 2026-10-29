import 'package:flutter/material.dart';

enum NotificationCategory {
  all('All'),
  jobs('Jobs'),
  applications('Applications'),
  roadmap('Roadmap'),
  cv('CV');

  const NotificationCategory(this.label);

  final String label;
}

class NotificationItem {
  const NotificationItem({
    required this.title,
    required this.message,
    required this.time,
    required this.actionLabel,
    required this.category,
    required this.icon,
    required this.iconColor,
    required this.iconBackground,
    required this.group,
    this.isRead = false,
  });

  final String title;
  final String message;
  final String time;
  final String actionLabel;
  final NotificationCategory category;
  final IconData icon;
  final Color iconColor;
  final Color iconBackground;
  final String group;
  final bool isRead;

  NotificationItem copyWith({bool? isRead}) => NotificationItem(
    title: title,
    message: message,
    time: time,
    actionLabel: actionLabel,
    category: category,
    icon: icon,
    iconColor: iconColor,
    iconBackground: iconBackground,
    group: group,
    isRead: isRead ?? this.isRead,
  );
}
