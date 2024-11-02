import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
part 'switch_views_state.dart';

class SwitchViewsCubit extends Cubit<SwitchViewsState> {
  SwitchViewsCubit() : super(HomeState());
  emitViews(int currentIndex) {
    if (currentIndex == 0) {
      emit(HomeState());
    } else if (currentIndex == 1) {
      emit(CheckBoardState());
    } else if (currentIndex == 3) {
      emit(NotificationState());
    } else if (currentIndex == 4) {
      emit(ProfileState());
    }
  }
}
