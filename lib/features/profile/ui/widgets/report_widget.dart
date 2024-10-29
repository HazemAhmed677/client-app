import 'package:flutter/material.dart';
import 'dart:math';
import 'package:client_app/core/theming/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReportWidget extends StatelessWidget {
  const ReportWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            Center(
              child: CustomPaint(
                size: Size(50.sp, 50.sp),
                painter: ArcPainter90(),
              ),
            ),
            Center(
              child: CustomPaint(
                size: Size(40.sp, 40.sp),
                painter: ArcPainter270(),
              ),
            ),
          ],
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

    final rect = Rect.fromLTWH(2, -2, size.width, size.height);
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
