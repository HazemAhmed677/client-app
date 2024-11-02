import 'package:client_app/core/theming/app_colors.dart';
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
    return AnimatedSwitcher(
      transitionBuilder: (Widget child, Animation<double> animation) {
        return ScaleTransition(
          scale: animation,
          child: child,
        ); // Animation effect
      },
      duration: const Duration(
        milliseconds: 200,
      ),
      child: Transform.translate(
        offset: const Offset(0, -20),
        child: Container(
          clipBehavior: Clip.none,
          width: 200,
          height: (radius * 3).sp,
          decoration: const BoxDecoration(
              // color: AppColors.primary,
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
      ),
    );
  }
}
