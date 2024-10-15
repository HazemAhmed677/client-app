import 'package:client_app/core/theming/app_colors.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iconly/iconly.dart';

class CustomCurvedBottomNavBar extends StatefulWidget {
  const CustomCurvedBottomNavBar(
      {super.key, required this.currentScreenIdx, required this.onTap});
  final int currentScreenIdx;
  final Function(int) onTap;
  @override
  State<CustomCurvedBottomNavBar> createState() =>
      _CustomCurvedBottomNavBarState();
}

class _CustomCurvedBottomNavBarState extends State<CustomCurvedBottomNavBar> {
  GlobalKey<CurvedNavigationBarState> bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      height: 70.sp,
      key: bottomNavigationKey,
      index: widget.currentScreenIdx,
      // index: BlocProvider.of<SwitchScreensCubit>(context).currentIndex,
      items: [
        Icon(
          (widget.currentScreenIdx == 0) ? IconlyBold.home : IconlyLight.home,
          size: 24.sp,
          color: AppColors.white,
        ),
        Padding(
          padding: EdgeInsets.all(2.0.sp),
          child: Icon(
            FontAwesomeIcons.listCheck,
            size: 20.sp,
            color: AppColors.white,
          ),
        ),
        Padding(
          padding: EdgeInsets.all(1.0.sp),
          child: Icon(
            FontAwesomeIcons.plus,
            size: 22.sp,
            color: AppColors.white,
          ),
        ),
        Icon(
          (widget.currentScreenIdx == 3)
              ? IconlyBold.notification
              : IconlyLight.notification,
          size: 24.sp,
          color: AppColors.white,
        ),
        Icon(
          (widget.currentScreenIdx == 4)
              ? IconlyBold.profile
              : IconlyLight.profile,
          size: 24.sp,
          color: AppColors.white,
        ),
      ],
      color: AppColors.bottomNavBarColor,
      buttonBackgroundColor: AppColors.bottomNavBarColor,
      backgroundColor: AppColors.white,
      animationCurve: Curves.easeInOut,
      animationDuration: const Duration(
        milliseconds: 300,
      ),

      onTap: widget.onTap,
      // onTap: (index) {
      //   BlocProvider.of<SwitchScreensCubit>(context).currentIndex = index;
      //   BlocProvider.of<SwitchScreensCubit>(context).getScreen();
      // },
      letIndexChange: (index) => true,
    );
  }
}
