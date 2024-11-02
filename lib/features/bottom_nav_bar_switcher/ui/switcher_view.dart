import 'package:client_app/features/check_board/ui/check_board_view.dart';
import 'package:client_app/features/home/ui/home_view.dart';
import 'package:client_app/features/notification/ui/notification_view.dart';
import 'package:client_app/features/profile/ui/profile_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../logic/switch_views_cubit/switch_views_cubit.dart';
import 'widgets/nav_bar_stack.dart';

class SwitcherView extends StatefulWidget {
  const SwitcherView({super.key});

  @override
  State<SwitcherView> createState() => _SwitcherViewState();
}

class _SwitcherViewState extends State<SwitcherView> {
  final screens = const <Widget>[
    HomeView(),
    CheckBoardView(),
    NotificationView(),
    ProfileView(),
  ];
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
        builder: (context, state) => AnimatedSwitcher(
          duration: const Duration(
            milliseconds: 200,
          ),
          child: (state is HomeState)
              ? screens[0]
              : (state is CheckBoardState)
                  ? screens[1]
                  : (state is NotificationState)
                      ? screens[2]
                      : (state is ProfileState)
                          ? screens[3]
                          : const SizedBox.shrink(),
        ),
      ),
      bottomNavigationBar: const NavBarStack(),
    );
  }
}
