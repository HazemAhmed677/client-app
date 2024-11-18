part of 'pick_date_cubit.dart';

@immutable
sealed class PickDateState {}

final class PickDateInitial extends PickDateState {}

final class PickDateSelected extends PickDateState {
  final DateTime selectedDate;
  PickDateSelected(this.selectedDate);
}
