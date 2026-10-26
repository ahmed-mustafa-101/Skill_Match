import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:skillmatch/core/design_system/colors/app_colors.dart';
import 'package:skillmatch/core/design_system/typography/app_text_styles.dart';
import 'package:skillmatch/features/home/presentation/utils/home_text_style.dart';
import 'package:skillmatch/core/extensions/build_context_localization.dart';

class HomeRecommendationsHeader extends StatelessWidget {
  const HomeRecommendationsHeader({
    super.key,
    required this.showAll,
    required this.onToggleShowAll,
  });

  final bool showAll;
  final VoidCallback onToggleShowAll;

  @override
  Widget build(BuildContext context) {
        return Row(
      children: [
        Expanded(
          child: Text(
            context.l10n.recommendedForYou,
            style: homeTextStyle(
              AppTextStyles.titleMedium.copyWith(fontWeight: FontWeight.w700),
            ),
          ),
        ),
        TextButton(
          onPressed: onToggleShowAll,
          style: TextButton.styleFrom(
            foregroundColor: AppColors.secondary,
            minimumSize: Size.zero,
            padding: EdgeInsets.all(4.r),
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
          child: Text(showAll ? context.l10n.showLess : '${context.l10n.seeAll} ›'),
        ),
      ],
    );
  }
}
