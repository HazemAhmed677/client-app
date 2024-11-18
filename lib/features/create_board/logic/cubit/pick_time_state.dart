part of 'pick_time_cubit.dart';

@immutable
sealed class PickTimeState {}

final class PickTimeInitial extends PickTimeState {}

final class PickTimeSelected extends PickTimeState {
  final TimeOfDay selectedTime;
  PickTimeSelected(this.selectedTime);
}
