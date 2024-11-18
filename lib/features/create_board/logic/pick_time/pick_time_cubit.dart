import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
part 'pick_time_state.dart';

class PickTimeCubit extends Cubit<PickTimeState> {
  PickTimeCubit() : super(PickTimeInitial());

  void pickTime({required TimeOfDay time}) {
    emit(PickTimeSelected(time));
  }
}
