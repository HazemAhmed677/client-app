import 'package:client_app/core/helpers/logger.dart';
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
    loggerError(MediaQuery.sizeOf(context).height.toString());
    return Transform.translate(
      offset: Offset(
          0,
          MediaQuery.sizeOf(context).height > 762
              ? -72.h
              : MediaQuery.sizeOf(context).height > 700
                  ? -92.h
                  : MediaQuery.sizeOf(context).height > 605
                      ? -118.h
                      : MediaQuery.sizeOf(context).height > 505
                          ? -132.h
                          : -194.h),
      child: SizedBox(
        height: 100,
        child: Transform.translate(
          offset: Offset(
            -46.sp,
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
