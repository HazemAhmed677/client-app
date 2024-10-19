import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iconly/iconly.dart';

import '../../../../core/theming/app_colors.dart';
import '../../logic/switch_views_cubit/switch_views_cubit.dart';
import 'switch_micro.dart';

class NavBarStack extends StatefulWidget {
  const NavBarStack({super.key});

  @override
  State<NavBarStack> createState() => _NavBarStackState();
}

class _NavBarStackState extends State<NavBarStack> {
  GlobalKey<CurvedNavigationBarState> bottomNavigationKey = GlobalKey();
  int currentScreenIdx = 0;
  bool flag = false;
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        CurvedNavigationBar(
          height: 64.sp,
          key: bottomNavigationKey,
          index: currentScreenIdx,
          // index: BlocProvider.of<SwitchScreensCubit>(context).currentIndex,
          items: [
            Icon(
              (currentScreenIdx == 0) ? IconlyBold.home : IconlyLight.home,
              size: 24.sp,
              color: AppColors.white,
            ),
            Padding(
              padding: EdgeInsets.all(2.0.sp),
              child: Icon(
                FontAwesomeIcons.listCheck,
                size: 22.sp,
                color: AppColors.white,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(2.0.sp),
              child: Icon(
                (flag) ? FontAwesomeIcons.xmark : FontAwesomeIcons.plus,
                size: 24.sp,
                color: AppColors.white,
              ),
            ),
            Icon(
              (currentScreenIdx == 3)
                  ? IconlyBold.notification
                  : IconlyLight.notification,
              size: 26.sp,
              color: AppColors.white,
            ),
            Icon(
              (currentScreenIdx == 4)
                  ? IconlyBold.profile
                  : IconlyLight.profile,
              size: 26.sp,
              color: AppColors.white,
            ),
          ],
          color: AppColors.bottomNavBarColor,
          buttonBackgroundColor:
              flag ? AppColors.redDegree : AppColors.bottomNavBarColor,
          backgroundColor: AppColors.white,
          animationCurve: Curves.easeInOut,
          animationDuration: const Duration(
            milliseconds: 200,
          ),

          onTap: (index) {
            currentScreenIdx = index;
            BlocProvider.of<SwitchViewsCubit>(context).setIndex(index);
            if (index == 2) {
              flag = !flag;
            } else {
              flag = false;
            }
            setState(() {});
          },
          letIndexChange: (index) => true,
        ),
        Positioned(
          bottom: 120.sp,
          left: 0,
          right: 0,
          child: SwitchMicro(
            currentScreenIdx: currentScreenIdx,
            flag: flag,
          ),
        )
      ],
    );
  }
}
