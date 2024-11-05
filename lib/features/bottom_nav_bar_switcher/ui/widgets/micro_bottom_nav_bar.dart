import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
      child: SizedBox(
        height: 100,
        child: Transform.translate(
          offset: Offset(
            -45.sp,
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
