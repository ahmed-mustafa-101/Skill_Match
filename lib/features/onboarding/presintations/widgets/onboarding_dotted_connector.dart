import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:skillmatch/core/design_system/colors/app_colors.dart';

class OnboardingDottedConnector extends StatelessWidget {
  const OnboardingDottedConnector({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 20.w,
      child: LayoutBuilder(
        builder: (context, constraints) {
          return CustomPaint(
            size: Size(constraints.maxWidth, 1.h),
            painter: const _DottedLinePainter(),
          );
        },
      ),
    );
  }
}

class _DottedLinePainter extends CustomPainter {
  const _DottedLinePainter();

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = AppColors.border
      ..strokeWidth = 1;
    for (var x = 0.0; x < size.width; x += 4.w) {
      canvas.drawCircle(Offset(x, size.height / 2), 1.r, paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}