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
  SwitchViewsState currentState = HomeState();
  @override
  void initState() {
    // set home default (change place)
    BlocProvider.of<SwitchViewsCubit>(context).emitViews(0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: BlocConsumer<SwitchViewsCubit, SwitchViewsState>(
        listener: (context, state) {
          if (state is! CreateBoardState) currentState = state;
        },
        builder: (context, state) {
          return BlocBuilder<SwitchViewsCubit, SwitchViewsState>(
            builder: (context, state) {
              return Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  ModalProgressHUD(
                    color: AppColors.darkGrey,
                    blur: 1.5.sp,
                    inAsyncCall: isAbsorbing,
                    progressIndicator: const SizedBox.shrink(),
                    child: AbsorbPointer(
                      absorbing: isAbsorbing,
                      child: AnimatedSwitcher(
                        duration: const Duration(milliseconds: 400),
                        child: theScreen(currentState),
                      ),
                    ),
                  ),
                  CurvedNavigationBar(
                    height: 64,
                    key: bottomNavigationKey,
                    index: state is HomeState
                        ? 0
                        : state is CheckBoardState
                            ? 1
                            : state is CreateBoardState
                                ? 2
                                : (state is NotificationState)
                                    ? 3
                                    : 4,
                    items: curevedNavBarItems(
                      currentScreenIdx: state is HomeState
                          ? 0
                          : state is CheckBoardState
                              ? 1
                              : state is CreateBoardState
                                  ? 2
                                  : state is NotificationState
                                      ? 3
                                      : 4,
                      flag: flag,
                    ),
                    color: AppColors.bottomNavBarColor,
                    buttonBackgroundColor: flag
                        ? AppColors.redDegree
                        : AppColors.bottomNavBarColor,
                    backgroundColor: Colors.transparent,
                    animationCurve: Curves.easeInOut,
                    animationDuration: const Duration(
                      milliseconds: 350,
                    ),
                    onTap: logicOfCurrAndPrevIndex,
                    letIndexChange: (index) => true,
                  ),
                  SizedBox(
                    height: 240.h,
                    width: MediaQuery.sizeOf(context).width,
                    child: Center(
                      child: SwitchMicro(
                        currentScreenIdx: state is HomeState
                            ? 0
                            : state is CheckBoardState
                                ? 1
                                : state is CreateBoardState
                                    ? 2
                                    : state is NotificationState
                                        ? 3
                                        : 4,
                        flag: flag,
                      ),
                    ),
                  )
                ],
              );
            },
          );
        },
      ),
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
      BlocProvider.of<SwitchViewsCubit>(context).emitViews(currentScreenIdx);
    } else {
      isAbsorbing = false;
      flag = false;
      BlocProvider.of<SwitchViewsCubit>(context).emitViews(index);
    }
    setState(() {});
    // loggerWarning(
    //     'currentScreenIdx: $currentScreenIdx ,and previousScreenIdx: $previousScreenIdx');
  }
}
