import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import '../../../core/theming/app_colors.dart';
import '../logic/switch_views_cubit/switch_views_cubit.dart';
import 'widgets/helper/curved_nav_bar_icons.dart';
import 'widgets/helper/make_a_screen.dart';
import 'widgets/switch_micro.dart';

class SwitcherView extends StatefulWidget {
  const SwitcherView({super.key});

  @override
  State<SwitcherView> createState() => _SwitcherViewState();
}

class _SwitcherViewState extends State<SwitcherView> {
  GlobalKey<CurvedNavigationBarState> bottomNavigationKey = GlobalKey();
  int currentScreenIdx = 0;
  int previousScreenIdx = 0;
  bool flag = false;
  bool isAbsorbing = false;

  @override
  void initState() {
    // set home default
    BlocProvider.of<SwitchViewsCubit>(context).emitViews(0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: BlocBuilder<SwitchViewsCubit, SwitchViewsState>(
        builder: (context, state) => Stack(
          alignment: Alignment.bottomCenter,
          children: [
            ModalProgressHUD(
              color: AppColors.darkGrey,
              blur: 1,
              inAsyncCall: isAbsorbing,
              progressIndicator: const SizedBox.shrink(),
              child: AbsorbPointer(
                absorbing: isAbsorbing,
                child: theScreen(state),
              ),
            ),
            CurvedNavigationBar(
              height: 65,
              key: bottomNavigationKey,
              index: currentScreenIdx,
              items: curevedNavBarItems(
                  currentScreenIdx: currentScreenIdx, flag: flag),
              color: AppColors.bottomNavBarColor,
              buttonBackgroundColor:
                  flag ? AppColors.redDegree : AppColors.bottomNavBarColor,
              backgroundColor: Colors.transparent,
              animationCurve: Curves.easeInOut,
              animationDuration: const Duration(
                milliseconds: 200,
              ),
              onTap: logicOfCurrAndPrevIndex,
              letIndexChange: (index) => true,
            ),
            SizedBox(
              height: 180.h,
              width: MediaQuery.sizeOf(context).width,
              child: SwitchMicro(
                currentScreenIdx: currentScreenIdx,
                flag: flag,
              ),
            )
          ],
        ),
      ),
      // bottomNavigationBar: const NavBarStack(),
    );
  }

  void logicOfCurrAndPrevIndex(
    int index,
  ) {
    if (currentScreenIdx != 2) {
      previousScreenIdx = currentScreenIdx;
    }
    currentScreenIdx = index;
    if (currentScreenIdx == 2) {
      flag = !flag;
      if (flag) {
        isAbsorbing = true;
      } else {
        isAbsorbing = false;
        currentScreenIdx = previousScreenIdx;
      }
    } else {
      BlocProvider.of<SwitchViewsCubit>(context).emitViews(index);
      isAbsorbing = false;
      flag = false;
    }
    setState(() {});
    // loggerWarning(
    //     'currentScreenIdx: $currentScreenIdx ,and previousScreenIdx: $previousScreenIdx');
  }
}
