import 'package:flutter/material.dart';

import '../../../../check_board/ui/check_board_view.dart';
import '../../../../home/ui/home_view.dart';
import '../../../../notification/ui/notification_view.dart';
import '../../../../profile/ui/profile_view.dart';
import '../../../logic/switch_views_cubit/switch_views_cubit.dart';

const screens = <Widget>[
  HomeView(),
  CheckBoardView(),
  NotificationView(),
  ProfileView(),
];
Widget theScreen(
  SwitchViewsState state,
) {
  if (state is HomeState) {
    return screens[0];
  } else if (state is CheckBoardState) {
    return screens[1];
  } else if (state is NotificationState) {
    return screens[2];
  } else if (state is ProfileState) {
    return screens[3];
  } else {
    return const SizedBox.shrink();
  }
}
