import 'package:flutter/material.dart';
import 'package:skillmatch/core/design_system/colors/app_colors.dart';
import 'package:skillmatch/core/design_system/spacing/app_spacing.dart';
import 'package:skillmatch/core/design_system/typography/app_text_styles.dart';
import 'package:skillmatch/core/extensions/build_context_localization.dart';

class HomeBottomNavigationBar extends StatelessWidget {
  const HomeBottomNavigationBar({
    super.key,
    required this.currentIndex,
    required this.onSelected,
  });

  final int currentIndex;
  final ValueChanged<int> onSelected;

  @override
  Widget build(BuildContext context) {
        final items = [
      (icon: Icons.smart_toy_outlined, label: context.l10n.navChatBot),
      (icon: Icons.alt_route_rounded, label: context.l10n.navRoadmap),
      (icon: Icons.home_rounded, label: context.l10n.navHome),
      (icon: Icons.bookmark_border_rounded, label: context.l10n.navSaved),
      (icon: Icons.person_outline_rounded, label: context.l10n.navProfile),
    ];
    return SafeArea(
      top: false,
      child: Container(
        decoration: const BoxDecoration(
          color: AppColors.surface,
          border: Border(top: BorderSide(color: AppColors.border)),
        ),
        padding: const EdgeInsets.fromLTRB(8, 8, 8, 4),
        child: Row(
          children: List.generate(items.length, (index) {
            final item = items[index];
            final selected = currentIndex == index;
            return Expanded(
              child: Semantics(
                button: true,
                selected: selected,
                label: item.label,
                child: InkWell(
                  borderRadius: BorderRadius.circular(16),
                  onTap: () => onSelected(index),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: AppSpacing.space2,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        AnimatedContainer(
                          duration: const Duration(milliseconds: 160),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 3,
                          ),
                          decoration: BoxDecoration(
                            color: selected
                                ? AppColors.primaryFixed
                                : Colors.transparent,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Icon(
                            item.icon,
                            size: 19,
                            color: selected
                                ? AppColors.primary
                                : AppColors.textSecondary,
                          ),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          item.label,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: AppTextStyles.labelSmall.copyWith(
                            fontSize: 10,
                            color: selected
                                ? AppColors.primary
                                : AppColors.textSecondary,
                            fontWeight: selected
                                ? FontWeight.w600
                                : FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
