import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:go_router/go_router.dart';
import 'package:skillmatch/core/design_system/app_bar/app_app_bar.dart';
import 'package:skillmatch/core/design_system/colors/app_colors.dart';
import 'package:skillmatch/core/extensions/build_context_localization.dart';
import 'package:skillmatch/core/design_system/spacing/app_spacing.dart';
import 'package:skillmatch/core/design_system/widgets/text/app_text.dart';
import 'package:skillmatch/features/notifications/data/notifications_sample_data.dart';
import 'package:skillmatch/features/notifications/domain/entities/notification_item.dart';
import 'package:skillmatch/features/notifications/presentation/widgets/notification_card.dart';
import 'package:skillmatch/features/notifications/presentation/widgets/notification_filter_chips.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({super.key});

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  NotificationCategory _selectedCategory = NotificationCategory.all;
  final Set<String> _readNotificationIds = {};

  @override
  Widget build(BuildContext context) {
    final items = NotificationsSampleData.items(context.l10n)
        .map(
          (item) => item.copyWith(
            isRead: item.isRead || _readNotificationIds.contains(item.id),
          ),
        )
        .toList();
    final filteredItems = _selectedCategory == NotificationCategory.all
        ? items
        : items.where((item) => item.category == _selectedCategory).toList();

    return Scaffold(
      appBar: AppAppBar(
        title: AppText(
          context.l10n.notifications,
          style: Theme.of(context).textTheme.titleLarge,
          fontWeight: FontWeight.w600,
          color: AppColors.primary,
        ),
        centerTitle: false,
        leading: IconButton(
          tooltip: context.l10n.back,
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.pop(),
        ),
        actions: [
          TextButton(
            onPressed: _markAllRead,
            child: AppText(
              context.l10n.notificationsMarkAllRead,
              color: AppColors.secondary,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(width: 8.w),
        ],
      ),
      body: Column(
        children: [
          const Divider(height: 1),
          NotificationFilterChips(
            selectedCategory: _selectedCategory,
            onChanged: (category) =>
                setState(() => _selectedCategory = category),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.fromLTRB(16.w, 8.h, 16.w, 24.h),
              children: _buildNotificationList(filteredItems),
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> _buildNotificationList(List<NotificationItem> items) {
    if (items.isEmpty) {
      return [
        SizedBox(height: 100.h),
        Center(child: AppText(context.l10n.notificationsEmptyCategory)),
      ];
    }

    final widgets = <Widget>[];
    String? currentGroup;
    for (var index = 0; index < items.length; index++) {
      final item = items[index];
      if (item.group != currentGroup) {
        currentGroup = item.group;
        widgets
          ..add(SizedBox(height: AppSpacing.space8.h))
          ..add(
            Padding(
              padding: EdgeInsets.only(left: 4.w, bottom: 10.h, top: 8.h),
              child: AppText(
                item.group,
                style: Theme.of(context).textTheme.labelSmall,
                color: AppColors.textSecondary,
                letterSpacing: 0.4,
              ),
            ),
          );
      }
      widgets
        ..add(NotificationCard(item: item, onTap: () => _markRead(item)))
        ..add(SizedBox(height: 8.h));
    }
    return widgets;
  }

  void _markRead(NotificationItem item) {
    if (item.isRead || !_readNotificationIds.add(item.id)) return;
    setState(() {});
  }

  void _markAllRead() {
    setState(() {
      _readNotificationIds.addAll(
        NotificationsSampleData.items(context.l10n).map((item) => item.id),
      );
    });
  }
}
