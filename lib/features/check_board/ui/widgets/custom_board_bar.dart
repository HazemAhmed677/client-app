import 'package:client_app/core/theming/app_colors.dart';
import 'package:client_app/features/check_board/ui/widgets/bar_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBoardBar extends StatefulWidget {
  const CustomBoardBar({super.key});

  @override
  State<CustomBoardBar> createState() => _CustomBoardBarState();
}

class _CustomBoardBarState extends State<CustomBoardBar> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 14.sp,
      ),
      child: SingleChildScrollView(
        clipBehavior: Clip.none,
        scrollDirection: Axis.horizontal,
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(14.sp),
            border: Border.all(color: AppColors.white, width: 3.sp),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 4.sp,
            ),
            child: Row(
              children: List.generate(
                4,
                (index) => GestureDetector(
                  onTap: () async {
                    currentIndex = index;
                    setState(() {});
                    // trigger here for rebuilding
                  },
                  child: BarItem(
                    isActive: (currentIndex == index),
                    text: (index == 0)
                        ? 'Projects'
                        : (index == 1)
                            ? 'Assignments'
                            : (index == 2)
                                ? 'Meetings'
                                : 'Completed',
                    isTheLast: (index == 3),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
