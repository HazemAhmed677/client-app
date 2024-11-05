import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/theming/app_colors.dart';
import 'micro_bottom_nav_bar_stack.dart';

class MicroBottomNavBar extends StatefulWidget {
  const MicroBottomNavBar({super.key});

  @override
  State<MicroBottomNavBar> createState() => _MicroBottomNavBarState();
}

class _MicroBottomNavBarState extends State<MicroBottomNavBar> {
  double radius = 46.sp;

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(0, -72.sp),
      child: Container(
        clipBehavior: Clip.hardEdge,
        width: 160,
        height: 98,
        decoration: const BoxDecoration(
          color: AppColors.white,
        ),
        child: Transform.translate(
          offset: Offset(
            -44.sp,
            0,
          ),
          child: MicroBottomNavBarStack(
            radius: radius,
          ),
        ),
      ),
    );
  }
}
