import 'dart:math';
import 'package:client_app/features/profile/ui/widgets/custom_text_of_grid_element.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../core/theming/app_colors.dart';

class LogoutWidget extends StatelessWidget {
  const LogoutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Stack(
          children: [
            Center(
              child: CustomPaint(
                size: Size(30.sp, 30.sp),
                painter: ArcPainter180(),
              ),
            ),
            Positioned(
              top: 0,
              bottom: 0,
              right: 0,
              left: 0,
              child: Divider(
                color: AppColors.white,
                thickness: 2.sp,
                indent: 45.sp,
                endIndent: 50.sp,
              ),
            ),
            Positioned(
              top: 0,
              bottom: 0,
              right: 0,
              left: 14.sp,
              child: Icon(
                FontAwesomeIcons.arrowRight,
                color: AppColors.mediumPriority,
                size: 16.sp,
              ),
            ),
          ],
        ),
        const CustomTextOfGridElement(text: 'Logout')
      ],
    );
  }
}

class ArcPainter180 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = AppColors.primary
      ..strokeWidth = 4
      ..style = PaintingStyle.fill;

    final rect = Rect.fromLTWH(0, 0, size.width, size.height);
    const startAngle = pi / 2;
    const sweepAngle = 2 * pi / 2;

    canvas.drawArc(rect, startAngle, sweepAngle, false, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
