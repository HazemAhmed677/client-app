import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/helpers/build_circles_of_nav_bar.dart';

class MicroBottomNavBar extends StatefulWidget {
  const MicroBottomNavBar({super.key});

  @override
  State<MicroBottomNavBar> createState() => _MicroBottomNavBarState();
}

class _MicroBottomNavBarState extends State<MicroBottomNavBar> {
  double radius = 46.sp;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AnimatedSwitcher(
          transitionBuilder: (Widget child, Animation<double> animation) {
            return ScaleTransition(
                scale: animation, child: child); // Animation effect
          },
          duration: const Duration(
            milliseconds: 200,
          ),
          child: SizedBox(
            width: radius * 2.sp,
            height: radius,
            child: Transform.translate(
              offset: Offset(
                -17.sp,
                0,
              ),
              child: Stack(
                alignment: Alignment.center,
                clipBehavior: Clip.none,
                children: buildWidgetsInCircle(
                  count: 3,
                  radius: radius,
                ), // Number of widgets and radius
              ),
            ),
          ),
        ),
      ],
    );
  }
}
