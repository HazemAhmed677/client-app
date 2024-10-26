import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
part 'choose_bar_state.dart';

class ChooseBarCubit extends Cubit<ChooseBarState> {
  ChooseBarCubit() : super(ProjectsState());
  chooseBar(int currentIndex) {
    if (currentIndex == 0) {
      emit(ProjectsState());
    } else if (currentIndex == 1) {
      emit(TasksState());
    } else if (currentIndex == 2) {
      emit(MeetingsState());
    } else {
      emit(CompletedState());
    }
  }
}
