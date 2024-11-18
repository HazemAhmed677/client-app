import 'package:flutter/material.dart';
import 'dart:math';
import 'package:client_app/core/theming/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/app_styles.dart';
import '../../../../core/theming/font_weight_helper.dart';

class ReportWidget extends StatelessWidget {
  const ReportWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            Center(
              child: CustomPaint(
                size: Size(28.sp, 28.sp),
                painter: ArcPainter90(),
              ),
            ),
            Center(
              child: CustomPaint(
                size: Size(24.sp, 24.sp),
                painter: ArcPainter270(),
              ),
            ),
          ],
        ),
        Text(
          'Report',
          style: AppStyles.nexaSemiBoldDarkGrey18.copyWith(
            fontWeight: FontWeightHelper.extraBold,
            color: AppColors.grey.shade700,
            fontSize: 14.sp,
          ),
        ),
      ],
    );
  }
}

class ArcPainter90 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = AppColors.mediumPriority
      ..strokeWidth = 4
      ..style = PaintingStyle.fill;

    final rect = Rect.fromLTWH(2, -4, size.width, size.height);
    const startAngle = 0.0; // 270 degrees (in radians)
    const sweepAngle = -pi / 2;

    canvas.drawArc(rect, startAngle, sweepAngle, true, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

class ArcPainter270 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = AppColors.primary
      ..strokeWidth = 4
      ..style = PaintingStyle.fill;

    final rect = Rect.fromLTWH(0, 0, size.width, size.height);
    const startAngle = 0.0;
    const sweepAngle = 3 * pi / 2;

    canvas.drawArc(rect, startAngle, sweepAngle, true, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
